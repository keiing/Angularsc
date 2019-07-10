import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HttpClient } from '@angular/common/http'
import { LoginPage } from '../login/login';
/**
 * Generated class for the UserCenterPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-user-center',
  templateUrl: 'user-center.html',
})
export class UserCenterPage {
  myUser = [];
  user_name = "";
  phone = "";
  avatar = "";
  constructor(private myHttp: HttpClient, public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewWillEnter() {
    if (this.myUser.length <= 0) {
      var url = "http://localhost:8080/user/reguser"
      this.myHttp.get(url, { withCredentials: true }).subscribe((result: any) => {
        if (result.code == 200) {
          this.myUser = result.data[0];
          this.user_name = result.data[0].user_name;
          this.phone = result.data[0].phone;
          this.avatar = result.data[0].avatar;
        }
      });
    }
  }
  ionViewDidLoad() {
    var url = "http://localhost:8080/user/reguser"
    this.myHttp.get(url, { withCredentials: true }).subscribe((result: any) => {
      if (result.code == 200) {
        this.myUser = result.data[0];
        this.user_name = result.data[0].user_name;
        this.phone = result.data[0].phone;
        this.avatar = result.data[0].avatar;
      } else {
        this.navCtrl.push(LoginPage)
      }
    });
  }
  //进入页面执行
  ionViewDidEnter() {
    console.log(this);
  }

}
