"use strict";(self.webpackChunkdocument_management=self.webpackChunkdocument_management||[]).push([[270],{3270:(Wt,E,a)=>{a.r(E),a.d(E,{ReminderModule:()=>Vt});var u=a(9808),h=a(2554),y=a(6087),Z=a(4847),H=a(4702),V=a(8929),W=a(6787),z=a(13),P=a(5778),X=a(2868),N=a(2676),d=a(3075),A=a(4598),g=a(2851),_=a(1357),e=a(5e3),L=a(3037),x=a(690),U=a(2457),M=a(6107),Y=a(7446),b=a(4107),p=a(508),C=a(9814),f=a(6370),D=a(773),Q=a(2925);function K(n,r){1&n&&(e.TgZ(0,"div",28),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"SUBJECT_IS_REQUIRED")," "))}function ee(n,r){if(1&n&&(e.TgZ(0,"div"),e.YNc(1,K,3,3,"div",27),e.qZA()),2&n){const t=e.oxw();e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("subject").errors?null:t.reminderForm.get("subject").errors.required)}}function te(n,r){1&n&&(e.TgZ(0,"div",28),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"MESSAGE_IS_REQUIRED")," "))}function ne(n,r){if(1&n&&(e.TgZ(0,"div"),e.YNc(1,te,3,3,"div",27),e.qZA()),2&n){const t=e.oxw();e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("message").errors?null:t.reminderForm.get("message").errors.required)}}function ie(n,r){if(1&n&&(e.TgZ(0,"span"),e._uU(1),e.qZA()),2&n){const t=e.oxw();e.xp6(1),e.AsE(" ",t.selectedUsers[0].firstName," ",t.selectedUsers[0].lastName," ")}}function re(n,r){if(1&n&&(e.TgZ(0,"span",29),e._uU(1),e.qZA()),2&n){const t=e.oxw();e.xp6(1),e.AsE(" (+",t.selectedUsers.length-1," ",2===t.selectedUsers.length?"other":"others",") ")}}function oe(n,r){if(1&n&&(e.TgZ(0,"mat-option",30),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",t),e.xp6(1),e.AsE("",t.firstName," ",t.lastName,"")}}function ae(n,r){if(1&n&&(e.TgZ(0,"option",36),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",null==t?null:t.id),e.xp6(1),e.hij(" ",null==t?null:t.name," ")}}function se(n,r){1&n&&(e.TgZ(0,"div"),e.TgZ(1,"div",28),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.qZA()),2&n&&(e.xp6(2),e.hij(" ",e.lcZ(3,1,"FREQUENCY_IS_REQUIRED")," "))}function de(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"div",3),e.TgZ(1,"div",31),e.TgZ(2,"label",32),e._uU(3),e.ALo(4,"translate"),e.qZA(),e.TgZ(5,"select",33),e.NdJ("change",function(){return e.CHM(t),e.oxw().onFrequencyChange()}),e.TgZ(6,"option",34),e._uU(7),e.ALo(8,"translate"),e.qZA(),e.YNc(9,ae,2,2,"option",35),e.qZA(),e.YNc(10,se,4,3,"div",9),e.qZA(),e.qZA()}if(2&n){const t=e.oxw();e.xp6(3),e.hij(" ",e.lcZ(4,4,"FREQUENCY"),""),e.xp6(4),e.hij("--",e.lcZ(8,6,"NONE"),"--"),e.xp6(2),e.Q6J("ngForOf",t.reminderFrequencies),e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("frequency").errors?null:t.reminderForm.get("frequency").errors.required)}}function le(n,r){if(1&n&&(e.TgZ(0,"div",43),e.ynx(1,44),e.TgZ(2,"mat-checkbox",45),e._uU(3),e.qZA(),e.BQk(),e.qZA()),2&n){const t=r.$implicit,i=r.index;e.xp6(1),e.Q6J("formGroupName",i),e.xp6(2),e.hij(" ",t.controls.name.value," ")}}function me(n,r){if(1&n&&(e.TgZ(0,"div",39),e.TgZ(1,"label",40),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.TgZ(4,"div",41),e.YNc(5,le,4,2,"div",42),e.qZA(),e.qZA()),2&n){const t=e.oxw(2);e.xp6(2),e.Oqu(e.lcZ(3,2,"WEEK_DAYS")),e.xp6(3),e.Q6J("ngForOf",t.dailyRemindersArray.controls)}}function ce(n,r){if(1&n&&(e.TgZ(0,"mat-radio-button",50),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",t.id),e.xp6(1),e.Oqu(t.name)}}function ue(n,r){if(1&n&&(e.TgZ(0,"div",39),e.TgZ(1,"label",46),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.TgZ(4,"div",47),e.TgZ(5,"mat-radio-group",48),e.YNc(6,ce,2,2,"mat-radio-button",49),e.qZA(),e.qZA(),e.qZA()),2&n){const t=e.oxw(2);e.xp6(2),e.Oqu(e.lcZ(3,2,"WEEK_DAYS")),e.xp6(4),e.Q6J("ngForOf",t.dayOfWeek)}}function ge(n,r){if(1&n&&(e.TgZ(0,"option",36),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",t.id),e.xp6(1),e.hij(" ",t.name," ")}}function he(n,r){if(1&n&&(e.TgZ(0,"option",36),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",t),e.xp6(1),e.hij(" ",t," ")}}function pe(n,r){1&n&&(e.TgZ(0,"div"),e.TgZ(1,"div",28),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.qZA()),2&n&&(e.xp6(2),e.hij(" ",e.lcZ(3,1,"PLEASE_SELECT_VALID_DAY")," "))}function _e(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"tr"),e.ynx(1,44),e.TgZ(2,"td"),e._uU(3),e.qZA(),e.TgZ(4,"td"),e.TgZ(5,"select",56),e.NdJ("change",function(){const s=e.CHM(t).$implicit;return e.oxw(3).onDateChange(s)}),e.YNc(6,ge,2,2,"option",35),e.qZA(),e.qZA(),e.TgZ(7,"td"),e.TgZ(8,"select",57),e.NdJ("change",function(){const s=e.CHM(t).$implicit;return e.oxw(3).onDateChange(s)}),e.YNc(9,he,2,2,"option",35),e.qZA(),e.YNc(10,pe,4,3,"div",9),e.qZA(),e.BQk(),e.qZA()}if(2&n){const t=r.$implicit,i=r.index,o=e.oxw(3);e.xp6(1),e.Q6J("formGroupName",i),e.xp6(2),e.Oqu(t.controls.name.value),e.xp6(3),e.Q6J("ngForOf",t.controls.monthValues.value),e.xp6(3),e.Q6J("ngForOf",o.days),e.xp6(1),e.Q6J("ngIf",t.get("day").touched&&t.hasError("invalidDate"))}}function fe(n,r){if(1&n&&(e.TgZ(0,"div",39),e.TgZ(1,"label",51),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.TgZ(4,"div",52),e.TgZ(5,"table",53),e.TgZ(6,"thead"),e.TgZ(7,"tr"),e._UZ(8,"th"),e.TgZ(9,"th"),e._uU(10),e.ALo(11,"translate"),e.qZA(),e.TgZ(12,"th"),e._uU(13),e.ALo(14,"translate"),e.qZA(),e.qZA(),e.qZA(),e.TgZ(15,"tbody",54),e.YNc(16,_e,11,5,"tr",55),e.qZA(),e.qZA(),e.qZA(),e.qZA()),2&n){const t=e.oxw(2);e.xp6(2),e.Oqu(e.lcZ(3,4,"SELECT_QUARTER_DATE")),e.xp6(8),e.Oqu(e.lcZ(11,6,"MONTH")),e.xp6(3),e.Oqu(e.lcZ(14,8,"DAY")),e.xp6(3),e.Q6J("ngForOf",t.quarterlyRemindersArray.controls)}}function ve(n,r){if(1&n&&(e.TgZ(0,"option",36),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",t.id),e.xp6(1),e.hij(" ",t.name," ")}}function Te(n,r){if(1&n&&(e.TgZ(0,"option",36),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",t),e.xp6(1),e.hij(" ",t," ")}}function Ze(n,r){1&n&&(e.TgZ(0,"div"),e.TgZ(1,"div",28),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.qZA()),2&n&&(e.xp6(2),e.hij(" ",e.lcZ(3,1,"PLEASE_SELECT_VALID_DAY")," "))}function Ae(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"tr"),e.ynx(1,44),e.TgZ(2,"td"),e._uU(3),e.qZA(),e.TgZ(4,"td"),e.TgZ(5,"select",56),e.NdJ("change",function(){const s=e.CHM(t).$implicit;return e.oxw(3).onDateChange(s)}),e.YNc(6,ve,2,2,"option",35),e.qZA(),e.qZA(),e.TgZ(7,"td"),e.TgZ(8,"select",57),e.NdJ("change",function(){const s=e.CHM(t).$implicit;return e.oxw(3).onDateChange(s)}),e.YNc(9,Te,2,2,"option",35),e.qZA(),e.YNc(10,Ze,4,3,"div",9),e.qZA(),e.BQk(),e.qZA()}if(2&n){const t=r.$implicit,i=r.index,o=e.oxw(3);e.xp6(1),e.Q6J("formGroupName",i),e.xp6(2),e.Oqu(t.controls.name.value),e.xp6(3),e.Q6J("ngForOf",t.controls.monthValues.value),e.xp6(3),e.Q6J("ngForOf",o.days),e.xp6(1),e.Q6J("ngIf",t.get("day").touched&&t.hasError("invalidDate"))}}function be(n,r){if(1&n&&(e.TgZ(0,"div",39),e.TgZ(1,"label",58),e._uU(2),e.ALo(3,"translate"),e.qZA(),e.TgZ(4,"div",59),e.TgZ(5,"table",53),e.TgZ(6,"thead"),e.TgZ(7,"tr"),e._UZ(8,"th"),e.TgZ(9,"th"),e._uU(10),e.ALo(11,"translate"),e.qZA(),e.TgZ(12,"th"),e._uU(13),e.ALo(14,"translate"),e.qZA(),e.qZA(),e.qZA(),e.TgZ(15,"tbody",60),e.YNc(16,Ae,11,5,"tr",55),e.qZA(),e.qZA(),e.qZA(),e.qZA()),2&n){const t=e.oxw(2);e.xp6(2),e.Oqu(e.lcZ(3,4,"SELECT_DATE")),e.xp6(8),e.Oqu(e.lcZ(11,6,"MONTH")),e.xp6(3),e.Oqu(e.lcZ(14,8,"DAY")),e.xp6(3),e.Q6J("ngForOf",t.halfYearlyRemindersArray.controls)}}function Re(n,r){if(1&n&&(e.TgZ(0,"div",3),e.TgZ(1,"div",37),e.YNc(2,me,6,4,"div",38),e.YNc(3,ue,7,4,"div",38),e.YNc(4,fe,17,10,"div",38),e.YNc(5,be,17,10,"div",38),e.qZA(),e.qZA()),2&n){const t=e.oxw();e.xp6(2),e.Q6J("ngIf","0"==t.reminderForm.get("frequency").value),e.xp6(1),e.Q6J("ngIf","1"==t.reminderForm.get("frequency").value),e.xp6(1),e.Q6J("ngIf","3"==t.reminderForm.get("frequency").value),e.xp6(1),e.Q6J("ngIf","4"==t.reminderForm.get("frequency").value)}}function ye(n,r){1&n&&(e.TgZ(0,"div",28),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"DATE_IS_REQUIRED")," "))}function xe(n,r){if(1&n&&(e.TgZ(0,"div"),e.YNc(1,ye,3,3,"div",27),e.qZA()),2&n){const t=e.oxw(2);e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("startDate").errors?null:t.reminderForm.get("startDate").errors.required)}}function Ce(n,r){1&n&&(e.TgZ(0,"div",28),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"START_DATE_SHOULD_BE_GREATER_THEN_CURRENT_DATE_TIME")," "))}function De(n,r){if(1&n&&(e.TgZ(0,"div"),e.YNc(1,Ce,3,3,"div",27),e.qZA()),2&n){const t=e.oxw(2);e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("startDate").errors?null:t.reminderForm.get("startDate").errors.owlDateTimeMin)}}function qe(n,r){if(1&n&&(e.TgZ(0,"div",31),e.TgZ(1,"label",32),e._uU(2),e.ALo(3,"translate"),e.qZA(),e._UZ(4,"input",61),e.YNc(5,xe,2,1,"div",9),e.YNc(6,De,2,1,"div",9),e._UZ(7,"owl-date-time",null,62),e.qZA()),2&n){const t=e.MAs(8),i=e.oxw();e.xp6(2),e.hij(" ",e.lcZ(3,6,"REMINDER_DATE"),""),e.xp6(2),e.Q6J("owlDateTimeTrigger",t)("min",i.minDate)("owlDateTime",t),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("startDate").touched&&i.reminderForm.get("startDate").errors),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("startDate").touched&&i.reminderForm.get("startDate").errors)}}function Fe(n,r){1&n&&(e.TgZ(0,"div",28),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"START_DATE_IS_REQUIRED")," "))}function Se(n,r){if(1&n&&(e.TgZ(0,"div"),e.YNc(1,Fe,3,3,"div",27),e.qZA()),2&n){const t=e.oxw(2);e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("startDate").errors?null:t.reminderForm.get("startDate").errors.required)}}function Ee(n,r){1&n&&(e.TgZ(0,"div",28),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"START_DATE_SHOULD_BE_GREATER_THEN_CURRENT_DATE_TIME")," "))}function Ne(n,r){if(1&n&&(e.TgZ(0,"div"),e.YNc(1,Ee,3,3,"div",27),e.qZA()),2&n){const t=e.oxw(2);e.xp6(1),e.Q6J("ngIf",null==t.reminderForm.get("startDate").errors?null:t.reminderForm.get("startDate").errors.owlDateTimeMin)}}function Le(n,r){if(1&n&&(e.TgZ(0,"div",31),e.TgZ(1,"label",32),e._uU(2),e.ALo(3,"translate"),e.qZA(),e._UZ(4,"input",63),e.YNc(5,Se,2,1,"div",9),e.YNc(6,Ne,2,1,"div",9),e._UZ(7,"owl-date-time",null,64),e.qZA()),2&n){const t=e.MAs(8),i=e.oxw();e.xp6(2),e.hij(" ",e.lcZ(3,6,"REMINDER_START_DATE"),""),e.xp6(2),e.Q6J("owlDateTimeTrigger",t)("min",i.minDate)("owlDateTime",t),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("startDate").touched&&i.reminderForm.get("startDate").errors),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("startDate").touched&&i.reminderForm.get("startDate").errors)}}function Ue(n,r){if(1&n&&(e.TgZ(0,"div",31),e.TgZ(1,"label",32),e._uU(2),e.ALo(3,"translate"),e.qZA(),e._UZ(4,"input",65),e._UZ(5,"owl-date-time",null,66),e.qZA()),2&n){const t=e.MAs(6);e.xp6(2),e.Oqu(e.lcZ(3,3,"REMINDER_END_DATE")),e.xp6(2),e.Q6J("owlDateTimeTrigger",t)("owlDateTime",t)}}function Me(n,r){1&n&&(e.TgZ(0,"div",67),e._UZ(1,"mat-spinner"),e.qZA())}const Ye=function(){return["/reminders"]};let q=(()=>{class n extends N.H{constructor(t,i,o,s,c,m,T){super(),this.fb=t,this.reminderService=i,this.commonService=o,this.toastrService=s,this.route=c,this.activatedRoute=m,this.translationService=T,this.reminderFrequencies=[],this.minDate=new Date,this.users=[],this.selectedUsers=[],this.isLoading=!1,this.dayOfWeek=[{id:0,name:"Sunday"},{id:1,name:"Monday"},{id:2,name:"Tuesday"},{id:3,name:"Wednesday"},{id:4,name:"Thursday"},{id:5,name:"Friday"},{id:6,name:"Saturday"}],this.months=[{id:1,name:"January"},{id:2,name:"February"},{id:3,name:"March"},{id:4,name:"April"},{id:5,name:"May"},{id:6,name:"June"},{id:7,name:"July"},{id:8,name:"August"},{id:9,name:"September"},{id:10,name:"October"},{id:11,name:"November"},{id:12,name:"December"}],this.days=[]}get dailyRemindersArray(){return this.reminderForm.get("dailyReminders")}get quarterlyRemindersArray(){return this.reminderForm.get("quarterlyReminders")}get halfYearlyRemindersArray(){return this.reminderForm.get("halfYearlyReminders")}ngOnInit(){for(let t=1;t<=31;t++)this.days.push(t);this.getReminderFrequency(),this.createReminderForm(),this.sub$.sink=this.activatedRoute.data.subscribe(t=>{t.reminder&&(this.reminder=Object.assign({},t.reminder),this.reminderForm.patchValue(this.reminder),this.onFrequencyChange(),this.reminderForm.patchValue(this.reminder),this.reminderForm.get("isRepeated").value&&this.reminderForm.get("frequency").setValidators([d.kI.required]))}),this.getUsers()}getReminderFrequency(){this.sub$.sink=this.commonService.getReminderFrequency().subscribe(t=>this.reminderFrequencies=[...t])}createReminderForm(){var t=new Date;this.reminderForm=this.fb.group({id:[""],subject:["",[d.kI.required]],message:["",[d.kI.required]],frequency:[""],isRepeated:[!1],isEmailNotification:[!1],startDate:[t,[d.kI.required]],endDate:[null],dayOfWeek:[2],documentId:[null]})}checkData(t){t.checked?this.reminderForm.get("frequency").setValidators([d.kI.required]):this.reminderForm.get("frequency").setValidators([]),this.reminderForm.markAllAsTouched()}createReminder(){if(!this.reminderForm.valid)return void this.reminderForm.markAllAsTouched();let t=this.reminderForm.value;t.reminderUsers=this.selectedUsers.map(i=>({reminderId:t.id,userId:i.id})),t.isRepeated||(t.dailyReminders=[],t.quarterlyReminders=[],t.halfYearlyReminders=[]),this.reminder?(t.dailyReminders&&(t.dailyReminders=t.dailyReminders.map(i=>(i.reminderId=this.reminder.id,i))),t.quarterlyReminders&&(t.quarterlyReminders=t.quarterlyReminders.map(i=>(i.reminderId=this.reminder.id,i))),t.halfYearlyReminders&&(t.halfYearlyReminders=t.halfYearlyReminders.map(i=>(i.reminderId=this.reminder.id,i))),this.isLoading=!0,this.sub$.sink=this.reminderService.updateReminder(t).subscribe(i=>{this.toastrService.success(this.translationService.getValue("REMINDER_UPDATED_SUCCESSFULLY")),this.route.navigate(["/reminders"]),this.isLoading=!1},()=>this.isLoading=!1)):(this.isLoading=!0,this.sub$.sink=this.reminderService.addReminder(t).subscribe(i=>{this.toastrService.success(this.translationService.getValue("REMINDER_CREATED_SUCCESSFULLY")),this.route.navigate(["/reminders"]),this.isLoading=!1},()=>this.isLoading=!1))}getUsers(){this.sub$.sink=this.commonService.getUsers().subscribe(t=>{if(this.users=t,this.reminder){const i=this.reminder.reminderUsers.map(o=>o.userId);this.selectedUsers=this.users.filter(o=>i.indexOf(o.id)>=0)}})}onFrequencyChange(){let t=this.reminderForm.get("frequency").value;t=0==t?"0":t,t==A.D.Daily.toString()?(this.removeQuarterlyReminders(),this.removeHalfYearlyReminders(),this.addDailReminders(),this.reminderForm.get("dayOfWeek").setValue("")):t==A.D.Weekly.toString()?(this.removeDailReminders(),this.removeQuarterlyReminders(),this.removeHalfYearlyReminders(),this.reminderForm.get("dayOfWeek").setValue(2)):t==A.D.Quarterly.toString()?(this.removeDailReminders(),this.removeHalfYearlyReminders(),this.addQuarterlyReminders(),this.reminderForm.get("dayOfWeek").setValue("")):t==A.D.HalfYearly.toString()?(this.removeDailReminders(),this.removeQuarterlyReminders(),this.addHalfYearlyReminders(),this.reminderForm.get("dayOfWeek").setValue("")):(this.removeDailReminders(),this.removeQuarterlyReminders(),this.removeHalfYearlyReminders(),this.reminderForm.get("dayOfWeek").setValue(""))}addDailReminders(){if(!this.reminderForm.contains("dailyReminders")){var t=this.fb.array([]);t.push(this.createDailyReminderFormGroup(g.e.Sunday)),t.push(this.createDailyReminderFormGroup(g.e.Monday)),t.push(this.createDailyReminderFormGroup(g.e.Tuesday)),t.push(this.createDailyReminderFormGroup(g.e.Wednesday)),t.push(this.createDailyReminderFormGroup(g.e.Thursday)),t.push(this.createDailyReminderFormGroup(g.e.Friday)),t.push(this.createDailyReminderFormGroup(g.e.Saturday)),this.reminderForm.addControl("dailyReminders",t)}}addQuarterlyReminders(){if(!this.reminderForm.contains("quarterlyReminders")){var t=this.fb.array([]),i=this.months.filter(m=>[1,2,3].indexOf(m.id)>=0),o=this.months.filter(m=>[4,5,6].indexOf(m.id)>=0),s=this.months.filter(m=>[7,8,9].indexOf(m.id)>=0),c=this.months.filter(m=>[10,11,12].indexOf(m.id)>=0);t.push(this.createQuarterlyReminderFormGroup(_.y.Quarter1,"Jan - Mar",i)),t.push(this.createQuarterlyReminderFormGroup(_.y.Quarter2,"Apr - Jun",o)),t.push(this.createQuarterlyReminderFormGroup(_.y.Quarter3,"Jul - Sept",s)),t.push(this.createQuarterlyReminderFormGroup(_.y.Quarter4,"Oct - Dec",c)),this.reminderForm.addControl("quarterlyReminders",t)}}addHalfYearlyReminders(){if(!this.reminderForm.contains("halfYearlyReminders")){var t=this.fb.array([]),i=this.months.filter(s=>[1,2,3,4,5,6].indexOf(s.id)>=0),o=this.months.filter(s=>[7,8,9,10,11,13].indexOf(s.id)>=0);t.push(this.createHalfYearlyReminderFormGroup(_.y.Quarter1,"Jan - Jun",i)),t.push(this.createHalfYearlyReminderFormGroup(_.y.Quarter2,"Jul - Dec",o)),this.reminderForm.addControl("halfYearlyReminders",t)}}removeDailReminders(){this.reminderForm.contains("dailyReminders")&&this.reminderForm.removeControl("dailyReminders")}removeQuarterlyReminders(){this.reminderForm.contains("quarterlyReminders")&&this.reminderForm.removeControl("quarterlyReminders")}removeHalfYearlyReminders(){this.reminderForm.contains("halfYearlyReminders")&&this.reminderForm.removeControl("halfYearlyReminders")}createDailyReminderFormGroup(t){return this.fb.group({id:[""],reminderId:[""],dayOfWeek:[t],isActive:[!0],name:[g.e[t]]})}createQuarterlyReminderFormGroup(t,i,o){return this.fb.group({id:[""],reminderId:[""],quarter:[t],day:[this.getCurrentDay()],month:[o[0]],name:[i],monthValues:[o]})}createHalfYearlyReminderFormGroup(t,i,o){return this.fb.group({id:[""],reminderId:[""],quarter:[t],day:[this.getCurrentDay()],month:[o[0]],name:[i],monthValues:[o]})}getCurrentDay(){return(new Date).getDate()}onDateChange(t){const i=t.get("day").value,o=t.get("month").value;i>new Date((new Date).getFullYear(),Number.parseInt(o),0).getDate()&&(t.setErrors({invalidDate:"Invalid Date"}),t.markAllAsTouched())}}return n.\u0275fac=function(t){return new(t||n)(e.Y36(d.qu),e.Y36(L.Z),e.Y36(x.v),e.Y36(U._W),e.Y36(h.F0),e.Y36(h.gz),e.Y36(M.D))},n.\u0275cmp=e.Xpm({type:n,selectors:[["app-add-reminder"]],features:[e.qOj],decls:55,vars:39,consts:[[1,"row","mb-3","align-items-center","justify-content-between"],[1,"col-md-auto","col-sm-auto"],[1,"section-title"],[1,"row"],[1,"col-sm-12"],[3,"formGroup"],[1,"form-group","col-md-12"],["for","subject"],["formControlName","subject","type","text","id","subject",1,"form-control"],[4,"ngIf"],["for","message"],["formControlName","message","id","message","cols","30",1,"form-control"],[1,"col-md-2"],["color","primary","formControlName","isRepeated",3,"change"],["color","primary","formControlName","isEmailNotification"],[1,"col-md-4"],["multiple","",1,"form-control",3,"placeholder","value","valueChange"],["class","example-additional-selection",4,"ngIf"],["color","primary",3,"value",4,"ngFor","ngForOf"],["class","row",4,"ngIf"],["class","form-group col-md-6",4,"ngIf"],[1,"mt-2","col-md-12"],["type","submit",1,"btn","btn-success","btn-sm","m-right-10",3,"click"],[1,"fas","fa-save"],["type","button",1,"btn","btn-danger","btn-sm",3,"routerLink"],[1,"fas","fa-times-circle"],["class","loading-shade",4,"ngIf"],["class","text-danger",4,"ngIf"],[1,"text-danger"],[1,"example-additional-selection"],["color","primary",3,"value"],[1,"form-group","col-md-6"],["for","frequency"],["formControlName","frequency","id","frequency",1,"form-control",3,"change"],["value",""],[3,"value",4,"ngFor","ngForOf"],[3,"value"],[1,"col-md-12"],["class","form-group",4,"ngIf"],[1,"form-group"],["for","weekDays"],["id","weekDays",1,"row"],["class","col-sm-auto mr-1","formArrayName","dailyReminders",4,"ngFor","ngForOf"],["formArrayName","dailyReminders",1,"col-sm-auto","mr-1"],[3,"formGroupName"],["color","primary","formControlName","isActive",1,"mr-1"],["for","weekDay"],["id","weekDay"],["formControlName","dayOfWeek"],["class","mr-2","color","primary",3,"value",4,"ngFor","ngForOf"],["color","primary",1,"mr-2",3,"value"],["for","Quarterly"],["id","Quarterly",1,"row"],[1,"table"],["formArrayName","quarterlyReminders"],[4,"ngFor","ngForOf"],["formControlName","month",1,"form-control",3,"change"],["formControlName","day",1,"form-control",3,"change"],["for","HalfYearly"],["id","HalfYearly",1,"row"],["formArrayName","halfYearlyReminders"],["formControlName","startDate","placeholder","Date",1,"form-control",3,"owlDateTimeTrigger","min","owlDateTime"],["dt2",""],["formControlName","startDate","placeholder","Start Date",1,"form-control",3,"owlDateTimeTrigger","min","owlDateTime"],["dt3",""],["formControlName","endDate","placeholder","End Date",1,"form-control",3,"owlDateTimeTrigger","owlDateTime"],["dt4",""],[1,"loading-shade"]],template:function(t,i){1&t&&(e.TgZ(0,"div",0),e.TgZ(1,"div",1),e.TgZ(2,"div",2),e.TgZ(3,"h2"),e._uU(4),e.ALo(5,"translate"),e.qZA(),e.qZA(),e.qZA(),e.qZA(),e.TgZ(6,"div",3),e.TgZ(7,"div",4),e.TgZ(8,"form",5),e.TgZ(9,"div",3),e.TgZ(10,"div",6),e.TgZ(11,"label",7),e._uU(12),e.ALo(13,"translate"),e.qZA(),e._UZ(14,"input",8),e.YNc(15,ee,2,1,"div",9),e.qZA(),e.qZA(),e.TgZ(16,"div",3),e.TgZ(17,"div",6),e.TgZ(18,"label",10),e._uU(19),e.ALo(20,"translate"),e.qZA(),e._UZ(21,"textarea",11),e.YNc(22,ne,2,1,"div",9),e.qZA(),e.qZA(),e.TgZ(23,"div",3),e.TgZ(24,"div",12),e.TgZ(25,"mat-checkbox",13),e.NdJ("change",function(s){return i.checkData(s)}),e._uU(26),e.ALo(27,"translate"),e.qZA(),e.qZA(),e.TgZ(28,"div",12),e.TgZ(29,"mat-checkbox",14),e._uU(30),e.ALo(31,"translate"),e.qZA(),e.qZA(),e.TgZ(32,"div",15),e.TgZ(33,"mat-select",16),e.NdJ("valueChange",function(s){return i.selectedUsers=s}),e.ALo(34,"translate"),e.TgZ(35,"mat-select-trigger"),e.YNc(36,ie,2,2,"span",9),e.YNc(37,re,2,2,"span",17),e.qZA(),e.YNc(38,oe,2,3,"mat-option",18),e.qZA(),e.qZA(),e.qZA(),e.YNc(39,de,11,8,"div",19),e.YNc(40,Re,6,4,"div",19),e.TgZ(41,"div",3),e.YNc(42,qe,9,8,"div",20),e.YNc(43,Le,9,8,"div",20),e.YNc(44,Ue,7,5,"div",20),e.TgZ(45,"div",21),e.TgZ(46,"button",22),e.NdJ("click",function(){return i.createReminder()}),e._UZ(47,"i",23),e._uU(48),e.ALo(49,"translate"),e.qZA(),e.TgZ(50,"button",24),e._UZ(51,"i",25),e._uU(52),e.ALo(53,"translate"),e.qZA(),e.qZA(),e.qZA(),e.qZA(),e.qZA(),e.qZA(),e.YNc(54,Me,2,0,"div",26)),2&t&&(e.xp6(4),e.Oqu(e.lcZ(5,22,"MANAGE_REMINDER")),e.xp6(4),e.Q6J("formGroup",i.reminderForm),e.xp6(4),e.hij(" ",e.lcZ(13,24,"SUBJECT"),""),e.xp6(3),e.Q6J("ngIf",i.reminderForm.get("subject").touched&&i.reminderForm.get("subject").errors),e.xp6(4),e.hij(" ",e.lcZ(20,26,"MESSAGE"),""),e.xp6(3),e.Q6J("ngIf",i.reminderForm.get("message").touched&&i.reminderForm.get("message").errors),e.xp6(4),e.hij(" ",e.lcZ(27,28,"REPEATE_REMINDER")," "),e.xp6(4),e.Oqu(e.lcZ(31,30,"SEND_EMAIL")),e.xp6(3),e.s9C("placeholder",e.lcZ(34,32,"SELECT_USERS")),e.Q6J("value",i.selectedUsers),e.xp6(3),e.Q6J("ngIf",i.selectedUsers.length>0),e.xp6(1),e.Q6J("ngIf",i.selectedUsers.length>1),e.xp6(1),e.Q6J("ngForOf",i.users),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("isRepeated").value),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("isRepeated").value),e.xp6(2),e.Q6J("ngIf",!i.reminderForm.get("isRepeated").value),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("isRepeated").value),e.xp6(1),e.Q6J("ngIf",i.reminderForm.get("isRepeated").value),e.xp6(4),e.hij(" ",e.lcZ(49,34,"SAVE")," "),e.xp6(2),e.Q6J("routerLink",e.DdM(38,Ye)),e.xp6(2),e.hij(" ",e.lcZ(53,36,"CANCEL")," "),e.xp6(2),e.Q6J("ngIf",i.isLoading))},directives:[d._Y,d.JL,d.sg,d.Fj,d.JJ,d.u,u.O5,Y.oG,b.gD,b.$L,u.sg,h.rH,p.ey,d.EJ,d.YN,d.Kr,d.CE,d.x0,C.VQ,C.U0,f.BO,f.sZ,f.hV,D.$g],pipes:[Q.X$],styles:[""]}),n})();var F=a(591),Qe=a(2654),J=a(1086),Je=a(7221),Oe=a(537);class Ie{constructor(r){this.reminderService=r,this._reminderSubject$=new F.X([]),this._responseHeaderSubject$=new F.X(null),this.loadingSubject=new F.X(!1),this.loading$=this.loadingSubject.asObservable(),this._count=0,this.responseHeaderSubject$=this._responseHeaderSubject$.asObservable()}get count(){return this._count}connect(){return this.sub$=new Qe.w,this._reminderSubject$.asObservable()}disconnect(){this._reminderSubject$.complete(),this.loadingSubject.complete(),this.sub$.unsubscribe()}loadData(r){this.loadingSubject.next(!0),this.sub$=this.reminderService.getReminders(r).pipe((0,Je.K)(()=>(0,J.of)([])),(0,Oe.x)(()=>this.loadingSubject.next(!1))).subscribe(t=>{if(t&&t.headers.get("X-Pagination")){const i=JSON.parse(t.headers.get("X-Pagination"));this._responseHeaderSubject$.next(i)}if(t){const i=[...t.body];this._count=i.length,this._reminderSubject$.next(i)}})}}var O=a(8966),ke=a(5485),je=a(9785),l=a(2075),R=a(2181),I=a(7423),k=a(5245),we=a(1615),Be=a(8475);const Ge=function(){return["/reminders/add"]};function $e(n,r){1&n&&(e.TgZ(0,"button",33),e._UZ(1,"i",34),e._uU(2),e.ALo(3,"translate"),e.qZA()),2&n&&(e.Q6J("routerLink",e.DdM(4,Ge)),e.xp6(2),e.hij(" ",e.lcZ(3,2,"ADD_REMINDER")," "))}function He(n,r){1&n&&e._UZ(0,"th",35)}function Ve(n,r){if(1&n&&(e.TgZ(0,"button",41),e.TgZ(1,"mat-icon"),e._uU(2,"more_vert"),e.qZA(),e.qZA()),2&n){e.oxw();const t=e.MAs(3);e.Q6J("matMenuTriggerFor",t)}}const We=function(n){return["/reminders/manage",n]};function ze(n,r){if(1&n&&(e.TgZ(0,"button",42),e.TgZ(1,"mat-icon"),e._uU(2,"edit"),e.qZA(),e.TgZ(3,"span"),e._uU(4),e.ALo(5,"translate"),e.qZA(),e.qZA()),2&n){const t=e.oxw().$implicit;e.Q6J("routerLink",e.VKq(4,We,t.id)),e.xp6(4),e.Oqu(e.lcZ(5,2,"EDIT"))}}function Pe(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"button",43),e.NdJ("click",function(){e.CHM(t);const o=e.oxw().$implicit;return e.oxw().deleteReminder(o)}),e.TgZ(1,"mat-icon"),e._uU(2,"delete"),e.qZA(),e.TgZ(3,"span"),e._uU(4),e.ALo(5,"translate"),e.qZA(),e.qZA()}2&n&&(e.xp6(4),e.Oqu(e.lcZ(5,1,"DELETE")))}const Xe=function(){return["reminder_edit_reminder","reminder_delete_reminder"]};function Ke(n,r){1&n&&(e.TgZ(0,"td",36),e.YNc(1,Ve,3,1,"button",37),e.TgZ(2,"mat-menu",null,38),e.YNc(4,ze,6,6,"button",39),e.YNc(5,Pe,6,3,"button",40),e.qZA(),e.qZA()),2&n&&(e.xp6(1),e.Q6J("hasClaim",e.DdM(3,Xe)),e.xp6(3),e.Q6J("hasClaim","reminder_edit_reminder"),e.xp6(1),e.Q6J("hasClaim","reminder_delete_reminder"))}function et(n,r){1&n&&(e.TgZ(0,"th",44),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"START_DATE")," "))}function tt(n,r){if(1&n&&(e.TgZ(0,"td",36),e._uU(1),e.ALo(2,"date"),e.qZA()),2&n){const t=r.$implicit;e.xp6(1),e.hij(" ",e.xi3(2,1,t.startDate,"dd/MM/yyyy hh:mm:ss")," ")}}function nt(n,r){1&n&&(e.TgZ(0,"th",44),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"END_DATE")," "))}function it(n,r){if(1&n&&(e.TgZ(0,"td",36),e._uU(1),e.ALo(2,"date"),e.qZA()),2&n){const t=r.$implicit;e.xp6(1),e.hij(" ",e.xi3(2,1,t.endDate,"dd/MM/yyyy hh:mm:ss")," ")}}function rt(n,r){1&n&&(e.TgZ(0,"th",44),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"SUBJECT")," "))}function ot(n,r){if(1&n&&(e.TgZ(0,"td",36),e._uU(1),e.ALo(2,"limitTo"),e.qZA()),2&n){const t=r.$implicit;e.xp6(1),e.hij(" ",e.xi3(2,1,t.subject,100)," ")}}function at(n,r){1&n&&(e.TgZ(0,"th",44),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"MESSAGE")," "))}function st(n,r){if(1&n&&(e.TgZ(0,"td",36),e._uU(1),e.ALo(2,"limitTo"),e.qZA()),2&n){const t=r.$implicit;e.xp6(1),e.hij(" ",e.xi3(2,1,t.message,150)," ")}}function dt(n,r){1&n&&(e.TgZ(0,"th",44),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"FREQUENCY")," "))}function lt(n,r){if(1&n&&(e.TgZ(0,"td",36),e._uU(1),e.ALo(2,"frequency"),e.qZA()),2&n){const t=r.$implicit;e.xp6(1),e.hij(" ",e.lcZ(2,1,t.frequency)," ")}}function mt(n,r){1&n&&(e.TgZ(0,"th",44),e._uU(1),e.ALo(2,"translate"),e.qZA()),2&n&&(e.xp6(1),e.hij(" ",e.lcZ(2,1,"DOCUMENT")," "))}function ct(n,r){if(1&n&&(e.TgZ(0,"td",36),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.xp6(1),e.hij(" ",t.documentName," ")}}function ut(n,r){1&n&&e._UZ(0,"th",35)}function gt(n,r){1&n&&e._UZ(0,"th",35)}function ht(n,r){1&n&&e._UZ(0,"th",35)}function pt(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"th",35),e.TgZ(1,"input",45),e.NdJ("ngModelChange",function(o){return e.CHM(t),e.oxw().SubjectFilter=o}),e.qZA(),e.qZA()}if(2&n){const t=e.oxw();e.xp6(1),e.Q6J("ngModel",t.SubjectFilter)}}function _t(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"th",35),e.TgZ(1,"input",46),e.NdJ("ngModelChange",function(o){return e.CHM(t),e.oxw().MessageFilter=o}),e.qZA(),e.qZA()}if(2&n){const t=e.oxw();e.xp6(1),e.Q6J("ngModel",t.MessageFilter)}}function ft(n,r){if(1&n&&(e.TgZ(0,"mat-option",48),e._uU(1),e.qZA()),2&n){const t=r.$implicit;e.Q6J("value",null==t?null:t.id),e.xp6(1),e.hij(" ",null==t?null:t.name," ")}}function vt(n,r){if(1&n){const t=e.EpF();e.TgZ(0,"th",35),e.TgZ(1,"mat-select",47),e.NdJ("ngModelChange",function(o){return e.CHM(t),e.oxw().FrequencyFilter=o}),e.TgZ(2,"mat-option",48),e._uU(3,"None"),e.qZA(),e.YNc(4,ft,2,2,"mat-option",49),e.qZA(),e.qZA()}if(2&n){const t=e.oxw();e.xp6(1),e.Q6J("ngModel",t.FrequencyFilter),e.xp6(3),e.Q6J("ngForOf",t.reminderFrequencies)}}function Tt(n,r){1&n&&e._UZ(0,"th",35)}const Zt=function(){return[15,20,30]};function At(n,r){if(1&n&&(e.TgZ(0,"td",50),e._UZ(1,"mat-paginator",51),e.qZA()),2&n){const t=e.oxw();e.xp6(1),e.Q6J("length",t.reminderResource.totalCount)("pageSize",t.reminderResource.pageSize)("pageSizeOptions",e.DdM(3,Zt))}}function bt(n,r){1&n&&e._UZ(0,"tr",52)}function Rt(n,r){1&n&&e._UZ(0,"tr",53)}function yt(n,r){1&n&&e._UZ(0,"tr",52)}function xt(n,r){1&n&&e._UZ(0,"tr",54)}function Ct(n,r){1&n&&(e.ynx(0),e.TgZ(1,"div",5),e.TgZ(2,"div",55),e.TgZ(3,"label",56),e._uU(4),e.ALo(5,"translate"),e.qZA(),e.qZA(),e.qZA(),e.BQk()),2&n&&(e.xp6(4),e.hij(" ",e.lcZ(5,1,"NO_DATA_FOUND"),""))}function Dt(n,r){1&n&&(e.TgZ(0,"div",57),e._UZ(1,"mat-spinner"),e.qZA())}const qt=function(){return["action-search","date-search","enddate-search","subject-search","message-search","frequency-search","document-search"]};let Ft=(()=>{class n extends N.H{constructor(t,i,o,s,c,m){super(),this.reminderService=t,this.dialog=i,this.commonService=o,this.commonDialogService=s,this.toastrService=c,this.translationService=m,this.reminders=[],this.reminderFrequencies=[],this.displayedColumns=["action","startDate","endDate","subject","message","frequency","documentName"],this.footerToDisplayed=["footer"],this.isLoadingResults=!0,this.filterObservable$=new V.xQ,this.reminderResource=new H.t,this.reminderResource.pageSize=15,this.reminderResource.orderBy="startDate desc"}get SubjectFilter(){return this._subjectFilter}set SubjectFilter(t){this._subjectFilter=t,this.filterObservable$.next(`subject:${t}`)}set FrequencyFilter(t){this._frequencyFilter="0"==t?"0":t?t.toString():"",this.filterObservable$.next(`frequency:${this._frequencyFilter}`)}get FrequencyFilter(){return this._frequencyFilter}get MessageFilter(){return this._messageFilter}set MessageFilter(t){this._messageFilter=t,this.filterObservable$.next(`message:${t}`)}ngOnInit(){this.getReminderFrequency(),this.dataSource=new Ie(this.reminderService),this.dataSource.loadData(this.reminderResource),this.sub$.sink=this.filterObservable$.pipe((0,z.b)(1e3),(0,P.x)()).subscribe(t=>{this.reminderResource.skip=0;const i=t.split(":");"subject"===i[0]?this.reminderResource.subject=escape(i[1]):"message"===i[0]?this.reminderResource.message=i[1]:"frequency"===i[0]&&(this.reminderResource.frequency=i[1]),this.dataSource.loadData(this.reminderResource)})}ngAfterViewInit(){this.sub$.sink=this.sort.sortChange.subscribe(()=>this.paginator.pageIndex=0),this.sub$.sink=(0,W.T)(this.sort.sortChange,this.paginator.page).pipe((0,X.b)(t=>{this.reminderResource.skip=this.paginator.pageIndex*this.paginator.pageSize,this.reminderResource.pageSize=this.paginator.pageSize,this.reminderResource.orderBy=this.sort.active+" "+this.sort.direction,this.dataSource.loadData(this.reminderResource)})).subscribe()}getReminderFrequency(){this.sub$.sink=this.commonService.getReminderFrequency().subscribe(t=>this.reminderFrequencies=[...t])}editReminder(t){this.isLoadingResults=!0,this.sub$.sink=this.commonService.getReminder(t.id).subscribe(i=>{this.isLoadingResults=!1;let o=this.dialog.open(q,{width:"60vw",data:Object.assign({},{frequencies:this.reminderFrequencies,reminder:i})});this.sub$.sink=o.afterClosed().subscribe(s=>{s&&this.dataSource.loadData(this.reminderResource)})},()=>this.isLoadingResults=!1)}deleteReminder(t){this.sub$.sink=this.commonDialogService.deleteConformationDialog(this.translationService.getValue("ARE_YOU_SURE_YOU_WANT_TO_DELETE")).subscribe(i=>{i&&(this.isLoadingResults=!0,this.reminderService.deleteReminder(t.id).subscribe(()=>{this.isLoadingResults=!1,this.toastrService.success(this.translationService.getValue("REMINDER_DELETED_SUCCESSFULLY")),this.dataSource.loadData(this.reminderResource)},()=>this.isLoadingResults=!1))})}}return n.\u0275fac=function(t){return new(t||n)(e.Y36(L.Z),e.Y36(O.uw),e.Y36(x.v),e.Y36(ke.V),e.Y36(U._W),e.Y36(M.D))},n.\u0275cmp=e.Xpm({type:n,selectors:[["app-reminder-list"]],viewQuery:function(t,i){if(1&t&&(e.Gf(y.NW,5),e.Gf(Z.YE,5)),2&t){let o;e.iGM(o=e.CRH())&&(i.paginator=o.first),e.iGM(o=e.CRH())&&(i.sort=o.first)}},features:[e.qOj],decls:57,vars:14,consts:[[1,"row","mb-3","align-items-center","justify-content-between"],[1,"col-md-auto","col-sm-auto"],[1,"section-title"],[1,"widget-title"],["class","btn btn-success btn-sm m-right-10",3,"routerLink",4,"hasClaim"],[1,"row"],[1,"col-sm-12"],[1,"table-responsive","grid-height"],["mat-table","","matSort","","matSortActive","createdDate","matSortDirection","desc",3,"dataSource"],["matColumnDef","action"],["mat-header-cell","",4,"matHeaderCellDef"],["mat-cell","",4,"matCellDef"],["matColumnDef","startDate"],["mat-header-cell","","mat-sort-header","",4,"matHeaderCellDef"],["matColumnDef","endDate"],["matColumnDef","subject"],["matColumnDef","message"],["matColumnDef","frequency"],["matColumnDef","documentName"],["matColumnDef","action-search"],["matColumnDef","date-search"],["matColumnDef","enddate-search"],["matColumnDef","subject-search"],["matColumnDef","message-search"],["matColumnDef","frequency-search"],["matColumnDef","document-search"],["matColumnDef","footer"],["mat-footer-cell","","colspan","7",4,"matFooterCellDef"],["mat-header-row","",4,"matHeaderRowDef"],["mat-row","",4,"matRowDef","matRowDefColumns"],["mat-footer-row","",4,"matFooterRowDef"],[4,"ngIf"],["class","loading-shade",4,"ngIf"],[1,"btn","btn-success","btn-sm","m-right-10",3,"routerLink"],[1,"las","la-plus"],["mat-header-cell",""],["mat-cell",""],["mat-icon-button","","aria-label","Action",3,"matMenuTriggerFor",4,"hasClaim"],["menu","matMenu"],["mat-menu-item","",3,"routerLink",4,"hasClaim"],["mat-menu-item","",3,"click",4,"hasClaim"],["mat-icon-button","","aria-label","Action",3,"matMenuTriggerFor"],["mat-menu-item","",3,"routerLink"],["mat-menu-item","",3,"click"],["mat-header-cell","","mat-sort-header",""],["placeholder","Subject","type","text",1,"form-control","w-90",3,"ngModel","ngModelChange"],["placeholder","Message","type","text",1,"form-control","w-90","ml-2",3,"ngModel","ngModelChange"],["placeholder","Frequency",1,"form-control","ml-3",3,"ngModel","ngModelChange"],[3,"value"],[3,"value",4,"ngFor","ngForOf"],["mat-footer-cell","","colspan","7"],[3,"length","pageSize","pageSizeOptions"],["mat-header-row",""],["mat-row",""],["mat-footer-row",""],[1,"col-sm-12","ml-4","mt-3"],[1,"font-weight-bold"],[1,"loading-shade"]],template:function(t,i){1&t&&(e.TgZ(0,"div",0),e.TgZ(1,"div",1),e.TgZ(2,"div",2),e.TgZ(3,"h2"),e._uU(4),e.ALo(5,"translate"),e.qZA(),e.qZA(),e.qZA(),e.TgZ(6,"div",1),e.TgZ(7,"h4",3),e.YNc(8,$e,4,5,"button",4),e.qZA(),e.qZA(),e.qZA(),e.TgZ(9,"div",5),e.TgZ(10,"div",6),e.TgZ(11,"div",7),e.TgZ(12,"table",8),e.ynx(13,9),e.YNc(14,He,1,0,"th",10),e.YNc(15,Ke,6,4,"td",11),e.BQk(),e.ynx(16,12),e.YNc(17,et,3,3,"th",13),e.YNc(18,tt,3,4,"td",11),e.BQk(),e.ynx(19,14),e.YNc(20,nt,3,3,"th",13),e.YNc(21,it,3,4,"td",11),e.BQk(),e.ynx(22,15),e.YNc(23,rt,3,3,"th",13),e.YNc(24,ot,3,4,"td",11),e.BQk(),e.ynx(25,16),e.YNc(26,at,3,3,"th",13),e.YNc(27,st,3,4,"td",11),e.BQk(),e.ynx(28,17),e.YNc(29,dt,3,3,"th",13),e.YNc(30,lt,3,3,"td",11),e.BQk(),e.ynx(31,18),e.YNc(32,mt,3,3,"th",13),e.YNc(33,ct,2,1,"td",11),e.BQk(),e.ynx(34,19),e.YNc(35,ut,1,0,"th",10),e.BQk(),e.ynx(36,20),e.YNc(37,gt,1,0,"th",10),e.BQk(),e.ynx(38,21),e.YNc(39,ht,1,0,"th",10),e.BQk(),e.ynx(40,22),e.YNc(41,pt,2,1,"th",10),e.BQk(),e.ynx(42,23),e.YNc(43,_t,2,1,"th",10),e.BQk(),e.ynx(44,24),e.YNc(45,vt,5,2,"th",10),e.BQk(),e.ynx(46,25),e.YNc(47,Tt,1,0,"th",10),e.BQk(),e.ynx(48,26),e.YNc(49,At,2,4,"td",27),e.BQk(),e.YNc(50,bt,1,0,"tr",28),e.YNc(51,Rt,1,0,"tr",29),e.YNc(52,yt,1,0,"tr",28),e.YNc(53,xt,1,0,"tr",30),e.qZA(),e.YNc(54,Ct,6,3,"ng-container",31),e.qZA(),e.qZA(),e.qZA(),e.YNc(55,Dt,2,0,"div",32),e.ALo(56,"async")),2&t&&(e.xp6(4),e.Oqu(e.lcZ(5,9,"REMINDERS")),e.xp6(4),e.Q6J("hasClaim","reminder_create_reminder"),e.xp6(4),e.Q6J("dataSource",i.dataSource),e.xp6(38),e.Q6J("matHeaderRowDef",i.displayedColumns),e.xp6(1),e.Q6J("matRowDefColumns",i.displayedColumns),e.xp6(1),e.Q6J("matHeaderRowDef",e.DdM(13,qt)),e.xp6(1),e.Q6J("matFooterRowDef",i.footerToDisplayed),e.xp6(1),e.Q6J("ngIf",0===i.dataSource.count),e.xp6(1),e.Q6J("ngIf",e.lcZ(56,11,i.dataSource.loading$)))},directives:[je.d,l.BZ,Z.YE,l.w1,l.fO,l.Dz,l.mD,l.as,l.nj,l.Ke,u.O5,h.rH,l.ge,l.ev,R.VK,I.lW,R.p6,k.Hw,R.OP,Z.nU,d.Fj,d.JJ,d.On,b.gD,p.ey,u.sg,l.yh,y.NW,l.XQ,l.Gk,l.Q2,D.$g],pipes:[Q.X$,u.Ov,u.uU,we.W,Be.y],styles:[""]}),n})();var St=a(2986),Et=a(1709);let j=(()=>{class n{constructor(t,i){this.cs=t,this.router=i}resolve(t,i){const o=t.paramMap.get("id");return"add"===o?null:this.cs.getReminder(o).pipe((0,St.q)(1),(0,Et.zg)(s=>s?(0,J.of)(s):(this.router.navigate(["/reminders"]),null)))}}return n.\u0275fac=function(t){return new(t||n)(e.LFG(x.v),e.LFG(h.F0))},n.\u0275prov=e.Yz7({token:n,factory:n.\u0275fac}),n})();var S=a(319);const Nt=[{path:"",component:Ft,data:{claimType:"reminder_view_reminders"},canActivate:[S.a]},{path:"add",component:q,data:{claimType:"reminder_create_reminder"},canActivate:[S.a]},{path:"manage/:id",resolve:{reminder:j},component:q,data:{claimType:"reminder_edit_reminder"},canActivate:[S.a]}];let Lt=(()=>{class n{}return n.\u0275fac=function(t){return new(t||n)},n.\u0275mod=e.oAB({type:n}),n.\u0275inj=e.cJS({imports:[[u.ez,h.Bz.forChild(Nt)],h.Bz]}),n})();var Ut=a(7531),Mt=a(6845),Yt=a(2368),Qt=a(9224);a(3191),a(449),a(5664);let $t=(()=>{class n{}return n.\u0275fac=function(t){return new(t||n)},n.\u0275mod=e.oAB({type:n}),n.\u0275inj=e.cJS({imports:[[p.BQ,p.si],p.BQ]}),n})();var Ht=a(4586);let Vt=(()=>{class n{}return n.\u0275fac=function(t){return new(t||n)},n.\u0275mod=e.oAB({type:n}),n.\u0275inj=e.cJS({providers:[j],imports:[[u.ez,d.u5,Lt,d.UX,f.Ll,f.x,D.Cq,Y.p9,O.Is,b.LD,Yt.rP,Mt.m,R.Tx,I.ot,Qt.QW,y.TU,Z.JX,Ut.c,l.p0,$t,C.Fk,k.Ps,Ht.D]]}),n})()}}]);