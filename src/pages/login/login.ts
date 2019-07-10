import { Component } from "@angular/core";
import { IonicPage, NavController, NavParams } from "ionic-angular";
import { HttpClient } from "@angular/common/http";
import { ToastController } from "ionic-angular";

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: "page-login",
  templateUrl: "login.html"
})
export class LoginPage {
  uname = "";
  upass = "";
  typetext = "password"//密码是否显示
  pepperoni = false//按钮开关
  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    private myhttp: HttpClient,
    private mytoast: ToastController
  ) { }
  //密码是否显示
  Changechecked() {
    // console.log(this.pepperoni, this.typetext)
    if (this.pepperoni === true) {
      this.typetext = "text"
    } else {
      this.typetext = "password";
    }
  }
  ionViewDidLoad() {
    console.log("ionViewDidLoad LoginPage");
  }
  summitClick() {
    if (this.uname && this.upass != "") {
      var url = "http://localhost:8080/user/login";
      this.myhttp
        .post(
          url,
          { uname: this.uname, upwd: this.upass },
          { withCredentials: true }
        )
        .subscribe((result: any) => {
          if (result.code == 200) {
            this.navCtrl.pop();
          } else {
            this.mytoast
              .create({
                message: "账号或密码错误",
                duration: 3000
              })
              .present();
          }
        });
    }
  }
}
