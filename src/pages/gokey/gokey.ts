import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { CartPage } from '../cart/cart';
import { GofaPage } from '../gofa/gofa';
import { GoshowPage } from '../goshow/goshow';
import { GodetailPage } from '../godetail/godetail';
import { Attribute, PropertyRead } from '@angular/compiler';

/**
 * Generated class for the GokeyPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-gokey',
  templateUrl: 'gokey.html',
})
export class GokeyPage {
  // mykey = GokeyPage
  mycard = CartPage
  mygofa = GofaPage
  myshow = GoshowPage
  mydetail = GodetailPage
  pet = "goshou"
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad GokeyPage');
  }
  myselecttrue = (e) => {
    console.log(this, event);
    console.log(this)
  }
}
