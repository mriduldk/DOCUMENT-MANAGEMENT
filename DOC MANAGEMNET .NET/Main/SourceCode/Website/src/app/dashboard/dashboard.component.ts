import { Component, OnInit } from '@angular/core';
import { DocumentInfo } from '@core/domain-classes/document-info';
import { DocumentView } from '@core/domain-classes/document-view';
import { BasePreviewComponent } from '@shared/base-preview/base-preview.component';
import { OverlayPanel } from '@shared/overlay-panel/overlay-panel.service';
import { BaseComponent } from '../base.component';
import { DashboradService } from './dashboard.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent extends BaseComponent implements OnInit {
  totalAssignDocumentCount = 0;
  expireSoonDocumentCount = 0;
  recentlyViewedDocuments = [];
  favouriteDocuments = [];
  constructor(private dashboardService: DashboradService, public overlay: OverlayPanel,) {
    super();
  }

  ngOnInit() {
    this.getRecentlyViewedDocuments();
    this.getFavouriteDocuments();
  }

  getRecentlyViewedDocuments = () => {
    this.dashboardService.getRecentlyViewed().subscribe(data => {
      this.recentlyViewedDocuments = data;
    })
  }

  getFavouriteDocuments = () => {
    this.dashboardService.getFavouriteDocument().subscribe(data => {
      this.favouriteDocuments = data;
    })
  }

  onDocumentView(document: DocumentInfo) {
    console.log(document);
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
}


