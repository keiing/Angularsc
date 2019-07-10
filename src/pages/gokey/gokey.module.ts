import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { GokeyPage } from './gokey';

@NgModule({
  declarations: [
    GokeyPage,
  ],
  imports: [
    IonicPageModule.forChild(GokeyPage),
  ],
})
export class GokeyPageModule {}
