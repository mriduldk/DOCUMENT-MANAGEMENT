import { SelectionModel } from '@angular/cdk/collections';
import { HttpEventType, HttpResponse } from '@angular/common/http';
import { AfterViewInit, Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { CommonDialogService } from '@core/common-dialog/common-dialog.service';
import { Category } from '@core/domain-classes/category';
import { DocumentAuditTrail } from '@core/domain-classes/document-audit-trail';
import { DocumentCategory } from '@core/domain-classes/document-category';
import { ResponseHeader } from '@core/domain-classes/document-header';
import { DocumentInfo } from '@core/domain-classes/document-info';
import { DocumentOperation } from '@core/domain-classes/document-operation';
import { DocumentResource } from '@core/domain-classes/document-resource';
import { DocumentView } from '@core/domain-classes/document-view';
import { CategoryService } from '@core/services/category.service';
import { CommonService } from '@core/services/common.service';
import { TranslationService } from '@core/services/translation.service';
import { BasePreviewComponent } from '@shared/base-preview/base-preview.component';
import { OverlayPanel } from '@shared/overlay-panel/overlay-panel.service';
import { ToastrService } from 'ngx-toastr';
import { fromEvent, merge, Observable } from 'rxjs';
import { debounceTime, distinctUntilChanged, filter, tap } from 'rxjs/operators';
import { BaseComponent } from 'src/app/base.component';
import { DocumentLibraryService } from 'src/app/document-library/document-library.service';
import { DocumentEditComponent } from '../document-edit/document-edit.component';
import { DocumentPermissionListComponent } from '../document-permission/document-permission-list/document-permission-list.component';
import { DocumentPermissionMultipleComponent } from '../document-permission/document-permission-multiple/document-permission-multiple.component';
import { DocumentReminderComponent } from '../document-reminder/document-reminder.component';
import { DocumentService } from '../document.service';
import { SendEmailComponent } from '../send-email/send-email.component';
import { DocumentDataSource } from './document-datasource';

@Component({
  selector: 'app-document-list',
  templateUrl: './document-list.component.html',
  styleUrls: ['./document-list.component.scss']
})
export class DocumentListComponent extends BaseComponent implements OnInit, AfterViewInit {
  dataSource: DocumentDataSource;
  documents: DocumentInfo[] = [];
  displayedColumns: string[] = ['select', 'action', 'name', 'categoryName', 'createdDate', 'createdBy'];
  isLoadingResults = true;
  documentResource: DocumentResource;
  categories: Category[] = [];
  allCategories: Category[] = [];
  loading$: Observable<boolean>;
  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;
  @ViewChild('input') input: ElementRef;
  selection = new SelectionModel<DocumentInfo>(true, []);
  constructor(
    private documentService: DocumentService,
    private toastrService: ToastrService,
    private commonDialogService: CommonDialogService,
    private categoryService: CategoryService,
    private dialog: MatDialog,
    public overlay: OverlayPanel,
    private documentLibraryService: DocumentLibraryService,
    private translationService:TranslationService,
    private commonService: CommonService
  ) {
    super();
    this.documentResource = new DocumentResource();
    this.documentResource.pageSize = 10;
    this.documentResource.orderBy = "CreatedDate desc";

  }

  ngOnInit(): void {
    this.dataSource = new DocumentDataSource(this.documentService);
    this.dataSource.loadDocuments(this.documentResource);
    this.getCategories();
    this.getResourceParameter();
  }

  ngAfterViewInit() {

    this.sort.sortChange.subscribe(() => this.paginator.pageIndex = 0);

    this.sub$.sink = merge(this.sort.sortChange, this.paginator.page)
      .pipe(
        tap((c: any) => {
          this.documentResource.skip = this.paginator.pageIndex * this.paginator.pageSize;
          this.documentResource.pageSize = this.paginator.pageSize;
          this.documentResource.orderBy = this.sort.active + ' ' + this.sort.direction;
          this.dataSource.loadDocuments(this.documentResource);
        })
      )
      .subscribe();

    this.sub$.sink = fromEvent(this.input.nativeElement, 'keyup')
      .pipe(
        debounceTime(1000),
        distinctUntilChanged(),
        tap(() => {
          this.paginator.pageIndex = 0;
          this.documentResource.name = this.input.nativeElement.value;
          this.dataSource.loadDocuments(this.documentResource);
        })
      )
      .subscribe();
  }

  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSource.data.length;
    return numSelected === numRows;
  }
  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {

    this.isAllSelected() ?
      this.selection.clear() :
      this.dataSource.data.forEach(row => this.selection.select(row));
  }

  onCategoryChange(filtervalue: any) {
    if (filtervalue.value) {
      this.documentResource.categoryId = filtervalue.value;
    } else {
      this.documentResource.categoryId = '';
    }
    this.documentResource.skip = 0;
    this.dataSource.loadDocuments(this.documentResource);
  }

  onCreatedDateChange(filtervalue: any) {
    if (filtervalue) {
      this.documentResource.createDate = filtervalue;
    } else {
      this.documentResource.createDate = null;
    }
    this.documentResource.skip = 0;
    this.dataSource.loadDocuments(this.documentResource);
  }

  getCategories(): void {
    this.categoryService.getAllCategoriesForDropDown().subscribe(c => {
      this.categories = [...c];
      this.setDeafLevel();
    });;
  }

  setDeafLevel(parent?: Category, parentId?: string) {
    const children = this.categories.filter(c => c.parentId == parentId);
    if (children.length > 0) {
      children.map((c, index) => {
        c.deafLevel = parent ? parent.deafLevel + 1 : 0;
        c.index = (parent ? parent.index : 0) + index * Math.pow(0.1, c.deafLevel);
        this.allCategories.push(c);
        this.setDeafLevel(c, c.id);
      });
    }
    return parent;
  }

  getResourceParameter() {
    this.sub$.sink = this.dataSource.responseHeaderSubject$
      .subscribe((c: ResponseHeader) => {
        if (c) {
          this.documentResource.pageSize = c.pageSize;
          this.documentResource.skip = c.skip;
          this.documentResource.totalCount = c.totalCount;
        }
      });
  }

  deleteDocument(document: DocumentInfo) {
    this.sub$.sink = this.commonDialogService
      .deleteConformationDialog( `${this.translationService.getValue('ARE_YOU_SURE_YOU_WANT_TO_DELETE')} ${document.name}`)
      .subscribe((isTrue: boolean) => {
        if (isTrue) {
          this.sub$.sink = this.documentService.deleteDocument(document.id)
            .subscribe(() => {
               this.addDocumentTrail(document.id, DocumentOperation.Deleted.toString());
              this.toastrService.success(this.translationService.getValue('DOCUMENT_DELETED_SUCCESSFULLY'));
              this.dataSource.loadDocuments(this.documentResource);
            });
        }
      });
  }

  getDocuments(): void {
    this.isLoadingResults = true;
    this.sub$.sink = this.documentService.getDocuments(this.documentResource)
      .subscribe(
        (resp: HttpResponse<DocumentInfo[]>) => {
          const paginationParam = JSON.parse(
            resp.headers.get('X-Pagination')
          ) as ResponseHeader;
          this.documentResource.pageSize = paginationParam.pageSize;
          this.documentResource.skip = paginationParam.skip;
          this.documents = [...resp.body];
          this.isLoadingResults = false;
        },
        () => (this.isLoadingResults = false)
      );
  }

  editDocument(documentInfo: DocumentInfo) {
    const documentCategories: DocumentCategory = {
      document: documentInfo,
      categories: this.categories
    }
    const dialogRef = this.dialog.open(DocumentEditComponent, {
      width: '600px',
      data: Object.assign({}, documentCategories)
    });

    this.sub$.sink = dialogRef.afterClosed()
      .subscribe((result: string) => {
        if (result === 'loaded') {
          this.dataSource.loadDocuments(this.documentResource);
        }
      });
  }

  manageDocumentPermission(documentInfo: DocumentInfo) {
    this.dialog.open(DocumentPermissionListComponent,
      {
        data: documentInfo,
        width: '80vw',
        height: '80vh'
      });
  }
  onSharedSelectDocument() {
    this.dialog.open(DocumentPermissionMultipleComponent,
      {
        data: this.selection.selected,
        width: '80vw',
        height: '80vh'
      });
  }

  downloadDocument(documentInfo: DocumentInfo) {
    this.sub$.sink = this.commonService.downloadDocument(documentInfo.id).subscribe(
      (event) => {
        if (event.type === HttpEventType.Response) {
          this.addDocumentTrail(documentInfo.id, DocumentOperation.Download.toString());
          this.downloadFile(event, documentInfo);
        }
      },
      (error) => {
        this.toastrService.error(this.translationService.getValue('ERROR_WHILE_DOWNLOADING_DOCUMENT'));
      }
    );
  }

  addDocumentTrail(id: string, operation: string) {
    const objDocumentAuditTrail: DocumentAuditTrail = {
      documentId: id,
      operationName: operation
    };
    this.sub$.sink = this.commonService.addDocumentAuditTrail(objDocumentAuditTrail)
      .subscribe(c => {
      });
  }

  sendEmail(documentInfo: DocumentInfo) {
    this.dialog.open(SendEmailComponent,
      {
        data: documentInfo,
        width: '80vw',
        height: '80vh'
      });
  }

  addReminder(documentInfo: DocumentInfo) {
    this.dialog.open(DocumentReminderComponent,
      {
        data: documentInfo,
        width: '80vw',
        height: '80vh'
      });
  }

  onDocumentView(document: DocumentInfo) {
    const urls = document.url.split('.');
    const extension = urls[1];
    const documentView: DocumentView = {
      documentId: document.id,
      name: document.name,
      extension: extension,
      isRestricted: document.isAllowDownload
    };
    this.overlay.open(BasePreviewComponent, {
      position: 'center',
      origin: 'global',
      panelClass: ['file-preview-overlay-container', 'white-background'],
      data: documentView
    });
  }

  archiveDocument = (document : DocumentInfo) => {
    const reqObj = {
      name : document.name,
      description: document?.description,
      url: document?.url,
      categoryId: document.categoryId,
      id: document.id
    };

    this.documentService.archiveDocuments(reqObj)
    .subscribe(
      (resp: HttpResponse<any>) => {
        console.log(resp);
        this.documentService.deleteDocument(document.id).subscribe(r => console.log(r));
      },
    );
  }

  private downloadFile(data: HttpResponse<Blob>, documentInfo: DocumentInfo) {
    const downloadedFile = new Blob([data.body], { type: data.body.type });
    const a = document.createElement('a');
    a.setAttribute('style', 'display:none;');
    document.body.appendChild(a);
    a.download = documentInfo.name;
    a.href = URL.createObjectURL(downloadedFile);
    a.target = '_blank';
    a.click();
    document.body.removeChild(a);
  }
}
