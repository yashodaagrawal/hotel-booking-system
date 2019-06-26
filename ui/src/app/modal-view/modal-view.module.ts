import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { NgbdModalView } from './modal-view'

@NgModule({
  imports: [BrowserModule, NgbModule],
  declarations: [NgbdModalView],
  exports: [NgbdModalView],
  bootstrap: [NgbdModalView]
})
export class NgbdModalViewModule {}
