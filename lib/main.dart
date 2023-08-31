import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:scaan_pay/screens/splashscrren/Splashscreen1.dart';
import 'package:scaan_pay/utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          getPages: Routes.routes,
          debugShowCheckedModeBanner: false,
          title: 'Scaan Pay',
          home: child,
        );
      },
      child: splashscreen1(),
    );
  }
}