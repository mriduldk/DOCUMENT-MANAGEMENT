import { animate, state, style, transition, trigger } from '@angular/animations';
import { ChangeDetectionStrategy, ChangeDetectorRef, Component, EventEmitter, Input, OnInit, Output }
  from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { CommonDialogService } from '@core/common-dialog/common-dialog.service';
import { Category } from '@core/domain-classes/category';
import { SubCategory } from '@core/domain-classes/subCategory';
import { CategoryService } from '@core/services/category.service';
import { TranslationService } from '@core/services/translation.service';
import { BaseComponent } from 'src/app/base.component';
import { ManageCategoryComponent } from '../manage-category/manage-category.component';

@Component({
  selector: 'app-category-list-presentation',
  templateUrl: './category-list-presentation.component.html',
  styleUrls: ['./category-list-presentation.component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  animations: [
    trigger('detailExpand', [
      state('collapsed', style({ height: '0px', minHeight: '0' })),
      state('expanded', style({ height: '*' })),
      transition('expanded <=> collapsed', animate('225ms cubic-bezier(0.4, 0.0, 0.2, 1)')),
    ]),
    trigger('detailSubCategoryExpand', [
      state('collapsed', style({ height: '0px', minHeight: '0' })),
      state('expanded', style({ height: '*' })),
      transition('expanded <=> collapsed', animate('225ms cubic-bezier(0.4, 0.0, 0.2, 1)')),
    ]),
  ],
})
export class CategoryListPresentationComponent extends BaseComponent implements OnInit {

  @Input() categories: Category[];
  @Output() addEditCategoryHandler: EventEmitter<Category> = new EventEmitter<Category>();
  @Output() deleteCategoryHandler: EventEmitter<string> = new EventEmitter<string>();
  columnsToDisplay: string[] = ['subcategory', 'action', 'name'];
  subCategoryColumnToDisplay: string[] = ['subChildCategory', 'action', 'name'];
  subChildCategoryColumnToDisplay : string[] = ['action', 'name'];
  subCategories: Category[] = [];
  subChildCategory : SubCategory[] = [];
  expandedElement: Category | null;
  subCategoryExpandedElement : SubCategory | null;
  constructor(
    private dialog: MatDialog,
    private commonDialogService: CommonDialogService,
    private cd: ChangeDetectorRef,
    private categoryService: CategoryService,
    private translationService:TranslationService
  ) {
    super();
  }

  ngOnInit(): void {
  }

  toggleRow(element: Category) {
    this.subCategories = [];
    this.categoryService.getSubCategories(element.id).subscribe(subCat => {
      this.subCategories = subCat;
      this.expandedElement = this.expandedElement === element ? null : element;
      this.cd.detectChanges();
    });
  }

  toggleSubCategoryRow(element: SubCategory) {
    this.subChildCategory = [];
    this.categoryService.getSubCategories(element.id).subscribe(subCat => {
      this.subChildCategory = subCat;
      this.subCategoryExpandedElement = this.subCategoryExpandedElement === element ? null : element;
      this.cd.detectChanges();
    });
  }

  deleteCategory(category: Category): void {
    this.sub$.sink = this.commonDialogService
      .deleteConformationDialog(`${this.translationService.getValue('ARE_YOU_SURE_YOU_WANT_TO_DELETE')} ${category.name}`)
      .subscribe(isTrue => {
        if (isTrue) {
          this.deleteCategoryHandler.emit(category.id);
        }
      });
  }

  deleteSubCategory(subCategory: SubCategory): void {
    this.sub$.sink = this.commonDialogService
      .deleteConformationDialog(`${this.translationService.getValue('ARE_YOU_SURE_YOU_WANT_TO_DELETE')} ${subCategory.name}`)
      .subscribe(isTrue => {
        if (isTrue) {
          this.deleteCategoryHandler.emit(subCategory.id);
        }
      });
  }

  manageCategory(category: Category): void {
    const dialogRef = this.dialog.open(ManageCategoryComponent, {
      width: '350px',
      data: Object.assign({}, category)
    });

    this.sub$.sink = dialogRef.afterClosed()
      .subscribe((result: Category) => {
        if (result) {
          this.addEditCategoryHandler.emit(result);
        }
      });
  }

  addSubCategory(category: Category) {
    this.manageCategory({
      id: '',
      description: '',
      name: '',
      parentId: category.id
    });
  }
}
