import { Component } from "@angular/core";
import { IonicPage, NavController, NavParams } from "ionic-angular";
import { HttpClient } from "@angular/common/http";
import { LoginPage } from "../login/login";
import { FormsModule } from "@angular/forms";

/**
 * Generated class for the CartPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: "page-cart",
  templateUrl: "cart.html"
})
export class CartPage {
  myCart = new Array();
  isSelecteds = false;
  url = "http://localhost:8080/"
  constructor(
    public myHttp: HttpClient,
    public navCtrl: NavController,
    public navParams: NavParams
  ) { }

  ionViewDidLoad() {
    console.log("ionViewDidLoad CartPage");
  }
  ionViewWillEnter() {
    //请求购物车列表
    var url = this.url + "cart/list";
    this.myHttp.get(url, { withCredentials: true }).subscribe((result: any) => {
      if (result.code == 300) {
        this.navCtrl.push(LoginPage);
      } else if (result.code == 200) {
        this.myCart = result.data;
        //遍历myCart数组,给每一个对象添加一个属性isSelected来记录是否被选中
        for (var i = 0; i < this.myCart.length; i++) {
          this.myCart[i].isSlected = this.isSelecteds;
        }
        console.log(result.data);
      }
    });
  }
  ChangeSelecteds() {
    if (this.isSelecteds == true) {
      for (var i = 0; i < this.myCart.length; i++) {
        this.myCart[i].isSlected = true;
      }
      console.log(this.myCart);
    } else if (this.isSelecteds == false) {
      for (var i = 0; i < this.myCart.length; i++) {
        this.myCart[i].isSlected = false;
      }
    }
  }
  //商品数量++
  onClickAdd(count) {
    console.log(count)
    this.myCart[count].count += 1;
  }
  //商品数量--
  onClickAjj(count) {
    if (this.myCart[count].count > 1) {
      this.myCart[count].count -= 1;
    }
  }
  //操作了购物车列表
  isSlecteds() {
    //ES6新特性写法
    // var arr = [];
    // for (var i = 0; i < this.myCart.length; i++) {
    //   arr.push(this.myCart[i].isSlected);
    // }
    // console.log(arr);
    // if (arr.every(element => {
    //     return element;}) == true) {
    //   this.isSelecteds = true;} else {
    //   this.isSelecteds = false;}
    //   console.log()
    //遍历购物车的每一个商品,做一个逻辑与运算，将最终的结果,赋值给this.isAllSelelcted
    var result = true;
    for (var i = 0; i < this.myCart.length; i++) {
      result = result && this.myCart[i].isSlected;
    }
    this.isSelecteds = result;
  }
  //计算被选中的商品总价格
  calcAll() {
    var totalPrice = 0;
    for (var i = 0; i < this.myCart.length; i++) {
      if (this.myCart[i].isSlected) {
        //单价乘以数量;
        totalPrice += this.myCart[i].price * this.myCart[i].count;
      }
    }
    return totalPrice;
  }
  //移除选中商品
  dleAll() {
    for (var i = this.myCart.length - 1; i >= 0; i--) {
      if (this.myCart[i].isSlected) {
        var url = this.url + "cart/del?iid=" + this.myCart[i].iid
        this.myCart.splice(i, 1)
        this.myHttp.get(url, { withCredentials: true }).subscribe((result: any) => {
        })
      }
    }
  }
}
