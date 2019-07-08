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
  constructor(private myHttp: HttpClient, public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    var url = "http://localhost:8080/user/reguser"
    this.myHttp.get(url, { withCredentials: true }).subscribe((result: any) => {
      if (result.code == 200) {
        this.myUser = result.data[0];
      } else {
        this.navCtrl.push(LoginPage)
      }
    });
  }

}
