import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(375, 667), //设计稿的宽度和高度 px
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          //配置主题
          theme: ThemeData(primarySwatch: Colors.grey),
          initialRoute: AppPages.INITIAL,
          //配置ios动画
          defaultTransition: Transition.rightToLeft,
          getPages: AppPages.routes,
        );
      }));
}
