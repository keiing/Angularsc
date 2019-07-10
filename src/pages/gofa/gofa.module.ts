import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { GofaPage } from './gofa';

@NgModule({
  declarations: [
    GofaPage,
  ],
  imports: [
    IonicPageModule.forChild(GofaPage),
  ],
})
export class GofaPageModule {}
