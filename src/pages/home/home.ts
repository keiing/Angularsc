import { Component } from "@angular/core";
import { IonicPage, NavController, NavParams } from "ionic-angular";
import { IndexPage } from "../index";
import { CartPage } from "../cart/cart";
import { NotFoundPage } from "../not-found/not-found";
import { UserCenterPage } from "../user-center/user-center";

/**
 * Generated class for the HomePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: "page-home",
  templateUrl: "home.html"
})
export class HomePage {
  myindex = { root: IndexPage, title: "首页" };
  mycart = { root: CartPage, title: "购物车" };
  myUserCenter = { root: UserCenterPage, title: "我的" };
  myNotFound = { root: NotFoundPage, title: "详情列表" };
  constructor(public navCtrl: NavController, public navParams: NavParams) { }

  ionViewDidLoad() {
    console.log("ionViewDidLoad HomePage");
  }
}
