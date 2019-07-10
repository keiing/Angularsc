import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { GoshowPage } from './goshow';

@NgModule({
  declarations: [
    GoshowPage,
  ],
  imports: [
    IonicPageModule.forChild(GoshowPage),
  ],
})
export class GoshowPageModule {}
