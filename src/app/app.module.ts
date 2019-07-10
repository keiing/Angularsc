import { BrowserModule } from "@angular/platform-browser";
import { ErrorHandler, NgModule } from "@angular/core";
import { IonicApp, IonicErrorHandler, IonicModule } from "ionic-angular";
import { HttpClientModule } from "@angular/common/http";
//引入双向绑定模块
import { FormsModule } from "@angular/forms";

import { MyApp } from "./app.component";
import { HomePage } from "../pages/home/home";
import { ListPage } from "../pages/list/list";

import { StatusBar } from "@ionic-native/status-bar";
import { SplashScreen } from "@ionic-native/splash-screen";
import { IndexPage } from "../pages/index";
import { LoginPage } from "../pages/login/login";
import { DetailPage } from "../pages/detail/detail";
import { CartPage } from "../pages/cart/cart";
import { OrderConfirmPage } from "../pages/order-confirm/order-confirm";
import { PayPage } from "../pages/pay/pay";
import { UserCenterPage } from "../pages/user-center/user-center";
import { NotFoundPage } from "../pages/not-found/not-found";
import { GoshowPage } from "../pages/goshow/goshow";
import { GokeyPage } from "../pages/gokey/gokey";
import { GofaPage } from "../pages/gofa/gofa";
import { GodetailPage } from "../pages/godetail/godetail";

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ListPage,
    IndexPage,
    LoginPage,
    DetailPage,
    CartPage,
    OrderConfirmPage,
    PayPage,
    UserCenterPage,
    NotFoundPage,
    GoshowPage, //收货页面
    GokeyPage,//收货付款发货评论总页面
    GofaPage,//发货页面
    GodetailPage,//评论页面
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    FormsModule,
    HttpClientModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    ListPage,
    IndexPage,
    LoginPage,
    DetailPage,
    CartPage,
    OrderConfirmPage,
    PayPage,
    UserCenterPage,
    GoshowPage, //收货页面
    NotFoundPage,
    GokeyPage,//收货付款发货评论总页面
    GofaPage,//发货页面
    GodetailPage,//评论页面
  ],
  providers: [
    StatusBar,
    SplashScreen,
    { provide: ErrorHandler, useClass: IonicErrorHandler }
  ]
})
export class AppModule { }
