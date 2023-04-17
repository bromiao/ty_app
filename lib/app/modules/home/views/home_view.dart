import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: PageView(
            controller: controller.pageController,
            physics: const NeverScrollableScrollPhysics(), //禁止左右滑动
            children: controller.pages,
            onPageChanged: (index) {
              controller.setCurrentIndex(index);
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.red, //选中的颜色
              currentIndex: controller.currentIndex.value, //第几个菜单选中
              type:
                  BottomNavigationBarType.fixed, //如果底部有4个或者4个以上的菜单的时候就需要配置这个参数
              onTap: (index) {
                controller.setCurrentIndex(index);
                controller.pageController.jumpToPage(index);
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "关注"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: "注单"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.room_service), label: "筛选"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "刷新"),
              ]),
        );
  }
}
