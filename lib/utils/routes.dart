

import 'package:get/get.dart';
import 'package:scaan_pay/screens/Dashboard.dart';
import 'package:scaan_pay/screens/QR_screen/Qr_page.dart';
import 'package:scaan_pay/screens/menu/wallet/wallet_page.dart';
import 'package:scaan_pay/screens/self_transfer/amount_screen.dart';
import 'package:scaan_pay/screens/self_transfer/pay_sucessful_screen.dart';
import 'package:scaan_pay/screens/self_transfer/recepit.dart';
import 'package:scaan_pay/screens/self_transfer/self_transfer_screen.dart';
import 'constants.dart';

class Routes{
  static List<GetPage<dynamic>> routes=[
    GetPage(name: kqrscanner,
      transition: Transition.rightToLeft,
      page: () => qr_page(),),
    GetPage(name: kmywallet,
      transition: Transition.rightToLeft,
      page: () => wallet(),),
    GetPage(name: kselftransfer,
      transition: Transition.rightToLeft,
      page: () => self_transfer(),),
    GetPage(name: kamount,
      transition: Transition.rightToLeft,
      page: () => amount(),),
    GetPage(name: kpaysucess,
      transition: Transition.rightToLeft,
      page: () => pay_success(),),
    GetPage(name: kdashboard,
      transition: Transition.rightToLeft,
      page: () => dashboardpage(),),
    GetPage(name: krecepit,
      transition: Transition.rightToLeft,
      page: () => recepit_page(),),
  ];
}