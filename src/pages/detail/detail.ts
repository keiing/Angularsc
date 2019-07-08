import { Component, ViewChild } from "@angular/core";
import { IonicPage, NavController, NavParams } from "ionic-angular";
import { HttpClient } from "@angular/common/http";
import { NotFoundPage } from "../not-found/not-found";
import { CartPage } from "../cart/cart";
import { ToastController, Slides } from "ionic-angular";
import { LoginPage } from "../login/login";
/**
 * Generated class for the DetailPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: "page-detail",
  templateUrl: "detail.html"
})
export class DetailPage {
  @ViewChild(Slides) slides: Slides;
  id = new Number();
  myPrice = "";
  myList = new Array();
  myTitle = "";
  mySubtitle = "";
  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    public myHttp: HttpClient,
    private toastCtrl: ToastController
  ) { }

  ionViewDidLoad() {
    console.log(this.id);
    console.log("ionViewDidLoad DetailPage");
    this.id = this.navParams.get("id");
    console.log(this.id);
    var url = "http://127.0.0.1:8080/product/detail?lid=" + this.id;
    this.myHttp.get(url).subscribe((result: any) => {
      console.log(result);
      this.myList = result.details.picList;
      console.log(this.myList);
      this.myPrice = result.details.price;
      this.myTitle = result.details.title;
      this.mySubtitle = result.details.subtitle;
      console.log(this.slides);
    });
  }
  heartClick() {
    this.navCtrl.push(NotFoundPage);
  }
  addClick() {
    var url = "http://localhost:8080/cart/add?buyCount=1" + "&lid=" + this.id;
    this.myHttp.get(url, { withCredentials: true }).subscribe((result: any) => {
      console.log(result);
      var message = "";
      if (result.code == 300) {
        message = "您未登录";
        this.navCtrl.push(LoginPage);
      } else if (result.code == 200) {
        message = "添加到购物车成功";
      }
      this.toastCtrl
        .create({
          message,
          duration: 3000,
          showCloseButton: true,
          closeButtonText: "确定"
        })
        .present();
    });
  }
  cartClick() {
    this.navCtrl.push(CartPage);
  }
  //解决轮播图滑动一次不会继续播放
  ionViewDidEnter() {
    this.slides.autoplayDisableOnInteraction = false;
  }
}
