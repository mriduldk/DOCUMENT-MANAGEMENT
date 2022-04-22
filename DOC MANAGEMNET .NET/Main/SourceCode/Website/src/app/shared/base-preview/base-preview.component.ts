import { HttpEventType, HttpResponse } from '@angular/common/http';
import { Component, Inject, OnInit } from '@angular/core';
import { DocumentAuditTrail } from '@core/domain-classes/document-audit-trail';
import { DocumentInfo } from '@core/domain-classes/document-info';
import { DocumentOperation } from '@core/domain-classes/document-operation';
import { DocumentView } from '@core/domain-classes/document-view';
import { ClonerService } from '@core/services/clone.service';
import { CommonService } from '@core/services/common.service';
import { TranslationService } from '@core/services/translation.service';
import { environment } from '@environments/environment';
import { OVERLAY_PANEL_DATA } from '@shared/overlay-panel/overlay-panel-data';
import { OverlayPanelRef } from '@shared/overlay-panel/overlay-panel-ref';
import { OverlayPanel } from '@shared/overlay-panel/overlay-panel.service';
import { ToastrService } from 'ngx-toastr';
import { BaseComponent } from 'src/app/base.component';

@Component({
  selector: 'app-base-preview',
  templateUrl: './base-preview.component.html',
  styleUrls: ['./base-preview.component.scss']
})
export class BasePreviewComponent extends BaseComponent implements OnInit {
  type = '';
  currentDoc: DocumentView;
  isLoading: boolean = false;
  isDownloadFlag: boolean = false;

  constructor(
    public overlay: OverlayPanel,
    private commonService: CommonService,
    @Inject(OVERLAY_PANEL_DATA) public data: DocumentView,
    private clonerService: ClonerService,
    private overlayRef: OverlayPanelRef,
    private toastrService: ToastrService,
    private translationService: TranslationService) {
    super();
  }

  ngOnInit(): void {
    this.onDocumentView(this.data);
  }

  closeToolbar() {
    this.overlayRef.close();
  }

  onDocumentView(document: DocumentView) {
    this.currentDoc = this.clonerService.deepClone<DocumentView>(document);
    const allowExtesions = environment.allowExtesions;
    const allowTypeExtenstion = allowExtesions.find(c => c.extentions.find(ext => ext === document.extension));
    this.type = allowTypeExtenstion ? allowTypeExtenstion.type : '';
    this.getIsDownloadFlag();
    this.addDocumentTrail(document.documentId, DocumentOperation.Read.toString());
  }

  addDocumentTrail(documentId: string, operation: string) {
    const objDocumentAuditTrail: DocumentAuditTrail = {
      documentId: documentId,
      operationName: operation
    };

    this.sub$.sink = this.commonService.addDocumentAuditTrail(objDocumentAuditTrail)
      .subscribe(c => {
      });
  }

  getIsDownloadFlag() {
    this.sub$.sink = this.commonService.isDownloadFlag(this.currentDoc.documentId)
      .subscribe(c => {
        this.isDownloadFlag = c;
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
