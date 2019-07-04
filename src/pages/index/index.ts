import { Component, ViewChild } from "@angular/core";
import { IonicPage, NavController, NavParams,Slides } from "ionic-angular";
import { HttpClient } from "@angular/common/http";
import { DetailPage } from "../detail/detail";
/**
 * Generated class for the IndexPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: "page-index",
  templateUrl: "index.html"
})
export class IndexPage {
  @ViewChild(Slides) Slides: Slides;
  detail = DetailPage; //保存跳转地址
  indeximg = [];
  indexscroll = [];
  rList = []; //保存
  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    public http: HttpClient
  ) {}

  ionViewDidLoad() {
    console.log("ionViewDidLoad IndexPage");
    var url = "http://127.0.0.1:8080/index";
    this.http.get(url).subscribe((result: any) => {
      this.indeximg = result.carouselItems;
      this.indexscroll = result.newArrialItems;
      this.rList = result.recommendedItems;
    });
  }
  handelNavPush(n) {
    console.log(n);
  }
  //解决轮播图滑动一次不会继续播放
  ionViewDidEnter() {
    this.Slides.autoplayDisableOnInteraction = false;
  }
}
