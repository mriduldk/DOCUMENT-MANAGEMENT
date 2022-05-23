import { Component, Inject, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { MatCheckboxChange } from '@angular/material/checkbox';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { DocumentUserPermission } from '@core/domain-classes/document-user-permission';
import { User } from '@core/domain-classes/user';
import { TranslationService } from '@core/services/translation.service';
import { ToastrService } from 'ngx-toastr';
import { BaseComponent } from 'src/app/base.component';
import { DocumentPermissionService } from '../document-permission.service';

@Component({
  selector: 'app-manage-user-permission',
  templateUrl: './manage-user-permission.component.html',
  styleUrls: ['./manage-user-permission.component.scss']
})
export class ManageUserPermissionComponent extends BaseComponent implements OnInit {
  selectedUsers: User[] = [];
  minDate: Date;
  permissionForm: FormGroup;
  constructor(
    private documentPermissionService: DocumentPermissionService,
    private toastrService: ToastrService,
    @Inject(MAT_DIALOG_DATA) public data: { users: User[], documentId: string },
    private dialogRef: MatDialogRef<ManageUserPermissionComponent>,
    private fb: FormBuilder,
    private translationService:TranslationService) {
    super();
    this.minDate = new Date();
  }

  ngOnInit(): void {
    this.createUserPermissionForm();
  }

  createUserPermissionForm() {
    this.permissionForm = this.fb.group({
      isTimeBound: new FormControl(false),
      startDate: [''],
      endDate: [''],
      isAllowDownload: new FormControl(false),
    });
  }

  timeBoundChange(event: MatCheckboxChange) {
    if (event.checked) {
      this.permissionForm.get('startDate').setValidators([Validators.required]);
      this.permissionForm.get('endDate').setValidators([Validators.required])
    } else {
      this.permissionForm.get('startDate').clearValidators();
      this.permissionForm.get('startDate').updateValueAndValidity();
      this.permissionForm.get('endDate').clearValidators();
      this.permissionForm.get('endDate').updateValueAndValidity();
    }
  }

  saveDocumentUserPermission() {
    if (!this.permissionForm.valid) {
      this.permissionForm.markAllAsTouched();
      return;
    }
    if (this.selectedUsers.length == 0) {
      this.toastrService.error(this.translationService.getValue('PLEASE_SELECT_ATLEAST_ONE_USER'));
      return
    }
    let documentUserPermission: DocumentUserPermission[] = this.selectedUsers.map(user => {
      return Object.assign({}, {
        id: '',
        documentId: this.data.documentId,
        userId: user.id
      }, this.permissionForm.value)
    });

    this.sub$.sink = this.documentPermissionService.addDocumentUserPermission(documentUserPermission).subscribe(() => {
      this.toastrService.success(this.translationService.getValue('PERMISSION_ADDED_SUCCESSFULLY'));
      this.dialogRef.close(true);
    });
  }

  onNoClick() {
    this.dialogRef.close();
  }
}