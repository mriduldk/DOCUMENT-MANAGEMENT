"use strict";(self.webpackChunkdocument_management=self.webpackChunkdocument_management||[]).push([[578],{4913:(v,m,i)=>{i.d(m,{J:()=>p});var u=i(5519);class p extends u.r{constructor(){super(...arguments),this.id="",this.createdBy="",this.categoryId=""}}},2760:(v,m,i)=>{i.d(m,{c:()=>p});const p=[{id:0,name:"Daily"},{id:1,name:"Weekly"},{id:2,name:"Monthly"},{id:3,name:"Quarterly"},{id:4,name:"Half Yearly"},{id:5,name:"Yearly"}]},690:(v,m,i)=>{i.d(m,{v:()=>D});var u=i(520),p=i(1086),h=i(7221),A=i(2760),g=i(5e3),C=i(8032);let D=(()=>{class T{constructor(a,s){this.httpClient=a,this.commonHttpErrorService=s}getUsers(){return this.httpClient.get("user").pipe((0,h.K)(this.commonHttpErrorService.handleError))}getRoles(){return this.httpClient.get("role").pipe((0,h.K)(this.commonHttpErrorService.handleError))}getReminder(a){return this.httpClient.get(`reminder/${a}`).pipe((0,h.K)(this.commonHttpErrorService.handleError))}addDocumentAuditTrail(a){return this.httpClient.post("documentAuditTrail",a)}downloadDocument(a){return this.httpClient.get(`document/${a}/download`,{reportProgress:!0,observe:"events",responseType:"blob"})}isDownloadFlag(a){return this.httpClient.get(`document/${a}/isDownloadFlag`)}getDocumentToken(a){return this.httpClient.get(`documentToken/${a}/token`)}deleteDocumentToken(a){return this.httpClient.delete(`documentToken/${a}`)}readDocument(a){return this.httpClient.get(`document/${a}/readText`)}getReminderFrequency(){return(0,p.of)(A.c)}addDocumentWithAssign(a){return this.httpClient.post("document/assign",a).pipe((0,h.K)(this.commonHttpErrorService.handleError))}getAllRemindersForCurrentUser(a){const Z=(new u.LE).set("Fields",a.fields?a.fields:"").set("OrderBy",a.orderBy?a.orderBy:"").set("PageSize",a.pageSize.toString()).set("Skip",a.skip.toString()).set("SearchQuery",a.searchQuery?a.searchQuery:"").set("subject",a.subject?a.subject:"").set("message",a.message?a.message:"").set("frequency",a.frequency?a.frequency:"");return this.httpClient.get("reminder/all/currentuser",{params:Z,observe:"response"})}deleteReminderCurrentUser(a){return this.httpClient.delete(`reminder/${a}/currentuser`)}}return T.\u0275fac=function(a){return new(a||T)(g.LFG(u.eN),g.LFG(C.U))},T.\u0275prov=g.Yz7({token:T,factory:T.\u0275fac,providedIn:"root"}),T})()},8578:(v,m,i)=>{i.r(m),i.d(m,{DocumentAuditTrailModule:()=>pt});var u=i(9808),p=i(2554),h=i(319),A=i(6087),g=i(4847),C=i(4913),D=i(6787),T=i(3753),f=i(2868),a=i(13),s=i(5778),Z=i(2676),S=i(591),N=i(1086),y=i(7221),O=i(537);class j{constructor(o){this.documentAuditTrailService=o,this.documentAuditTrailsSubject=new S.X([]),this.responseHeaderSubject=new S.X(null),this.loadingSubject=new S.X(!1),this.loading$=this.loadingSubject.asObservable(),this._count=0,this.responseHeaderSubject$=this.responseHeaderSubject.asObservable()}get count(){return this._count}connect(o){return this.documentAuditTrailsSubject.asObservable()}disconnect(o){this.documentAuditTrailsSubject.complete(),this.loadingSubject.complete()}loadDocumentAuditTrails(o){this.loadingSubject.next(!0),this.documentAuditTrailService.getDocumentAuditTrials(o).pipe((0,y.K)(()=>(0,N.of)([])),(0,O.x)(()=>this.loadingSubject.next(!1))).subscribe(n=>{const r=JSON.parse(n.headers.get("X-Pagination"));this.responseHeaderSubject.next(r);const c=[...n.body];this._count=c.length,this.documentAuditTrailsSubject.next(c)})}}var t=i(5e3),_=i(520),L=i(8032);let B=(()=>{class e{constructor(n,r){this.httpClient=n,this.commonHttpErrorService=r}getDocumentAuditTrials(n){const c=(new _.LE).set("Fields",n.fields).set("OrderBy",n.orderBy).set("PageSize",n.pageSize.toString()).set("Skip",n.skip.toString()).set("SearchQuery",n.searchQuery).set("categoryId",n.categoryId).set("name",n.name).set("id",n.id.toString()).set("createdBy",n.createdBy.toString());return this.httpClient.get("documentAuditTrail",{params:c,observe:"response"}).pipe((0,y.K)(this.commonHttpErrorService.handleError))}}return e.\u0275fac=function(n){return new(n||e)(t.LFG(_.eN),t.LFG(L.U))},e.\u0275prov=t.Yz7({token:e,factory:e.\u0275fac,providedIn:"root"}),e})();var M=i(6943),Y=i(690),I=i(7322),R=i(7531),x=i(4107),b=i(508),d=i(2075),E=i(773),U=i(2925);const Q=["input"];function $(e,o){1&e&&(t.TgZ(0,"div",28),t._UZ(1,"mat-spinner"),t.qZA())}function H(e,o){if(1&e&&(t.TgZ(0,"div"),t.TgZ(1,"b"),t._uU(2),t.qZA(),t.qZA()),2&e){const n=t.oxw().$implicit;t.xp6(2),t.hij(" ",n.name,"")}}function z(e,o){if(1&e&&(t.TgZ(0,"div"),t._uU(1),t.qZA()),2&e){const n=t.oxw().$implicit;t.xp6(1),t.hij(" ",n.name," ")}}const F=function(e){return{"margin-left.px":e}};function J(e,o){if(1&e&&(t.TgZ(0,"mat-option",12),t.TgZ(1,"div",29),t.YNc(2,H,3,1,"div",26),t.YNc(3,z,2,1,"div",26),t.qZA(),t.qZA()),2&e){const n=o.$implicit;t.Q6J("value",n.id),t.xp6(1),t.Q6J("ngStyle",t.VKq(4,F,20*n.deafLevel)),t.xp6(1),t.Q6J("ngIf",!n.parentId),t.xp6(1),t.Q6J("ngIf",n.parentId)}}function q(e,o){if(1&e&&(t.TgZ(0,"mat-option",12),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.Q6J("value",n.id),t.xp6(1),t.AsE(" ",n.firstName," ",n.lastName," ")}}function K(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.qZA()),2&e&&(t.xp6(1),t.hij(" ",t.lcZ(2,1,"NAME")," "))}function W(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",n.documentName," ")}}function G(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.qZA()),2&e&&(t.xp6(1),t.hij(" ",t.lcZ(2,1,"CATEGORY_NAME")," "))}function P(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",n.categoryName," ")}}function w(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.ALo(3,"translate"),t.qZA()),2&e&&(t.xp6(1),t.AsE(" ",t.lcZ(2,2,"ACTION")," ",t.lcZ(3,4,"DATE"),""))}function X(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.ALo(2,"date"),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",t.xi3(2,1,null==n?null:n.createdDate,"dd/MM/yyyy hh:mm:ss")," ")}}function k(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.qZA()),2&e&&(t.xp6(1),t.hij(" ",t.lcZ(2,1,"OPERATION")," "))}function V(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",n.operationName," ")}}function tt(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.qZA()),2&e&&(t.xp6(1),t.hij(" ",t.lcZ(2,1,"BY_WHOM")," "))}function et(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",null==n?null:n.createdBy," ")}}function nt(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.qZA()),2&e&&(t.xp6(1),t.hij(" ",t.lcZ(2,1,"TO_WHOM_USER")," "))}function ot(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",null==n?null:n.permissionUser," ")}}function it(e,o){1&e&&(t.TgZ(0,"th",30),t._uU(1),t.ALo(2,"translate"),t.qZA()),2&e&&(t.xp6(1),t.hij(" ",t.lcZ(2,1,"TO_WHOM_ROLE")," "))}function at(e,o){if(1&e&&(t.TgZ(0,"td",31),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.xp6(1),t.hij(" ",null==n?null:n.permissionRole," ")}}function rt(e,o){1&e&&t._UZ(0,"tr",32)}function st(e,o){1&e&&t._UZ(0,"tr",33)}function ct(e,o){1&e&&(t.ynx(0),t.TgZ(1,"div",34),t.TgZ(2,"div",35),t.TgZ(3,"label",36),t._uU(4),t.ALo(5,"translate"),t.qZA(),t.qZA(),t.qZA(),t.BQk()),2&e&&(t.xp6(4),t.hij(" ",t.lcZ(5,1,"NO_DATA_FOUND"),""))}const ut=function(){return[10,20,30]},lt=[{path:"",component:(()=>{class e extends Z.H{constructor(n,r,c){super(),this.documentAuditTrailService=n,this.categoryService=r,this.commonService=c,this.documentAuditTrails=[],this.displayedColumns=["createdDate","documentName","categoryName","operationName","createdBy","permissionUser","permissionRole"],this.isLoadingResults=!0,this.categories=[],this.allCategories=[],this.users=[],this.documentResource=new C.J,this.documentResource.pageSize=10,this.documentResource.orderBy="createdDate desc"}ngOnInit(){this.dataSource=new j(this.documentAuditTrailService),this.dataSource.loadDocumentAuditTrails(this.documentResource),this.getCategories(),this.getResourceParameter(),this.getUsers()}ngAfterViewInit(){this.sort.sortChange.subscribe(()=>this.paginator.pageIndex=0),this.sub$.sink=(0,D.T)(this.sort.sortChange,this.paginator.page).pipe((0,f.b)(n=>{this.documentResource.skip=this.paginator.pageIndex*this.paginator.pageSize,this.documentResource.pageSize=this.paginator.pageSize,this.documentResource.orderBy=this.sort.active+" "+this.sort.direction,this.dataSource.loadDocumentAuditTrails(this.documentResource)})).subscribe(),this.sub$.sink=(0,T.R)(this.input.nativeElement,"keyup").pipe((0,a.b)(1e3),(0,s.x)(),(0,f.b)(()=>{this.paginator.pageIndex=0,this.documentResource.name=this.input.nativeElement.value,this.dataSource.loadDocumentAuditTrails(this.documentResource)})).subscribe()}onCategoryChange(n){this.documentResource.categoryId=n.value?n.value:"",this.documentResource.skip=0,this.dataSource.loadDocumentAuditTrails(this.documentResource)}onUserChange(n){this.documentResource.createdBy=n.value?n.value:"",this.documentResource.skip=0,this.dataSource.loadDocumentAuditTrails(this.documentResource)}getCategories(){this.categoryService.getAllCategoriesForDropDown().subscribe(n=>{this.categories=n,this.setDeafLevel()})}setDeafLevel(n,r){const c=this.categories.filter(l=>l.parentId==r);return c.length>0&&c.map((l,ht)=>{l.deafLevel=n?n.deafLevel+1:0,l.index=(n?n.index:0)+ht*Math.pow(.1,l.deafLevel),this.allCategories.push(l),this.setDeafLevel(l,l.id)}),n}getUsers(){this.sub$.sink=this.commonService.getUsers().subscribe(n=>{this.users=n},n=>{n.messages.forEach(()=>{})})}getResourceParameter(){this.sub$.sink=this.dataSource.responseHeaderSubject$.subscribe(n=>{n&&(this.documentResource.pageSize=n.pageSize,this.documentResource.skip=n.skip,this.documentResource.totalCount=n.totalCount)})}}return e.\u0275fac=function(n){return new(n||e)(t.Y36(B),t.Y36(M.H),t.Y36(Y.v))},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-document-audit-trail"]],viewQuery:function(n,r){if(1&n&&(t.Gf(A.NW,5),t.Gf(g.YE,5),t.Gf(Q,5)),2&n){let c;t.iGM(c=t.CRH())&&(r.paginator=c.first),t.iGM(c=t.CRH())&&(r.sort=c.first),t.iGM(c=t.CRH())&&(r.input=c.first)}},features:[t.qOj],decls:58,vars:32,consts:[[1,"row","mb-3","align-items-center","justify-content-between"],[1,"col-md-auto","col-sm-auto"],[1,"section-title"],[1,"mat-elevation-z8"],["class","loading-shade",4,"ngIf"],[1,"table-container"],[1,"row","m-2"],[1,"col-sm-4"],[1,"w-100"],["matInput","",3,"placeholder"],["input",""],[3,"placeholder","selectionChange"],[3,"value"],[3,"value",4,"ngFor","ngForOf"],["mat-table","","matSort","","matSortActive","createdDate","matSortDirection","desc",1,"mat-elevation-z8",3,"dataSource"],["matColumnDef","documentName"],["mat-header-cell","","mat-sort-header","",4,"matHeaderCellDef"],["mat-cell","",4,"matCellDef"],["matColumnDef","categoryName"],["matColumnDef","createdDate"],["matColumnDef","operationName"],["matColumnDef","createdBy"],["matColumnDef","permissionUser"],["matColumnDef","permissionRole"],["mat-header-row","",4,"matHeaderRowDef","matHeaderRowDefSticky"],["mat-row","",4,"matRowDef","matRowDefColumns"],[4,"ngIf"],[3,"length","pageSize","pageSizeOptions"],[1,"loading-shade"],[1,"country-item",3,"ngStyle"],["mat-header-cell","","mat-sort-header",""],["mat-cell",""],["mat-header-row",""],["mat-row",""],[1,"row"],[1,"col-sm-12","ml-4","mt-3"],[1,"font-weight-bold"]],template:function(n,r){1&n&&(t.TgZ(0,"div",0),t.TgZ(1,"div",1),t.TgZ(2,"div",2),t.TgZ(3,"h2"),t._uU(4),t.ALo(5,"translate"),t.qZA(),t.qZA(),t.qZA(),t.qZA(),t.TgZ(6,"div",3),t.YNc(7,$,2,0,"div",4),t.ALo(8,"async"),t.TgZ(9,"div",5),t.TgZ(10,"div",6),t.TgZ(11,"div",7),t.TgZ(12,"mat-form-field",8),t._UZ(13,"input",9,10),t.ALo(15,"translate"),t.qZA(),t.qZA(),t.TgZ(16,"div",7),t.TgZ(17,"mat-form-field",8),t.TgZ(18,"mat-select",11),t.NdJ("selectionChange",function(l){return r.onCategoryChange(l)}),t.ALo(19,"translate"),t.TgZ(20,"mat-option",12),t._uU(21),t.ALo(22,"translate"),t.qZA(),t.YNc(23,J,4,6,"mat-option",13),t.qZA(),t.qZA(),t.qZA(),t.TgZ(24,"div",7),t.TgZ(25,"mat-form-field",8),t.TgZ(26,"mat-select",11),t.NdJ("selectionChange",function(l){return r.onUserChange(l)}),t.ALo(27,"translate"),t.TgZ(28,"mat-option",12),t._uU(29),t.ALo(30,"translate"),t.qZA(),t.YNc(31,q,2,3,"mat-option",13),t.qZA(),t.qZA(),t.qZA(),t.qZA(),t.TgZ(32,"table",14),t.ynx(33,15),t.YNc(34,K,3,3,"th",16),t.YNc(35,W,2,1,"td",17),t.BQk(),t.ynx(36,18),t.YNc(37,G,3,3,"th",16),t.YNc(38,P,2,1,"td",17),t.BQk(),t.ynx(39,19),t.YNc(40,w,4,6,"th",16),t.YNc(41,X,3,4,"td",17),t.BQk(),t.ynx(42,20),t.YNc(43,k,3,3,"th",16),t.YNc(44,V,2,1,"td",17),t.BQk(),t.ynx(45,21),t.YNc(46,tt,3,3,"th",16),t.YNc(47,et,2,1,"td",17),t.BQk(),t.ynx(48,22),t.YNc(49,nt,3,3,"th",16),t.YNc(50,ot,2,1,"td",17),t.BQk(),t.ynx(51,23),t.YNc(52,it,3,3,"th",16),t.YNc(53,at,2,1,"td",17),t.BQk(),t.YNc(54,rt,1,0,"tr",24),t.YNc(55,st,1,0,"tr",25),t.qZA(),t.YNc(56,ct,6,3,"ng-container",26),t._UZ(57,"mat-paginator",27),t.qZA(),t.qZA()),2&n&&(t.xp6(4),t.Oqu(t.lcZ(5,17,"DOCUMENTS_AUDIT_TRAIL")),t.xp6(3),t.Q6J("ngIf",t.lcZ(8,19,r.dataSource.loading$)),t.xp6(6),t.s9C("placeholder",t.lcZ(15,21,"SEARCH_DOCUMENT_BY_NAME")),t.xp6(5),t.s9C("placeholder",t.lcZ(19,23,"SELECT_CATEGORY")),t.xp6(3),t.hij("-- ",t.lcZ(22,25,"NONE")," --"),t.xp6(2),t.Q6J("ngForOf",r.allCategories),t.xp6(3),t.s9C("placeholder",t.lcZ(27,27,"SELECT_USER")),t.xp6(3),t.hij("-- ",t.lcZ(30,29,"NONE")," --"),t.xp6(2),t.Q6J("ngForOf",r.users),t.xp6(1),t.Q6J("dataSource",r.dataSource),t.xp6(22),t.Q6J("matHeaderRowDef",r.displayedColumns)("matHeaderRowDefSticky",!0),t.xp6(1),t.Q6J("matRowDefColumns",r.displayedColumns),t.xp6(1),t.Q6J("ngIf",0===r.dataSource.count),t.xp6(1),t.Q6J("length",r.documentResource.totalCount)("pageSize",r.documentResource.pageSize)("pageSizeOptions",t.DdM(31,ut)))},directives:[u.O5,I.KE,R.Nt,x.gD,b.ey,u.sg,d.BZ,g.YE,d.w1,d.fO,d.Dz,d.as,d.nj,A.NW,E.$g,u.PC,d.ge,g.nU,d.ev,d.XQ,d.Gk],pipes:[U.X$,u.Ov,u.uU],styles:[""]}),e})(),data:{claimType:"document_audit_trail_view_document_audit_trail"},canActivate:[h.a]}];let dt=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[p.Bz.forChild(lt)],p.Bz]}),e})();var mt=i(2368);let pt=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[u.ez,dt,d.p0,E.Cq,x.LD,mt.rP,g.JX,A.TU,R.c,U.aw]]}),e})()}}]);