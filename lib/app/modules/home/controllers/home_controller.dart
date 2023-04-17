import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../follow/views/follow_view.dart';
import '../../bet_history/views/bet_history_view.dart';

class HomeController extends GetxController {
  //用于控制默认加载的tabs选项
  RxInt currentIndex = 0.obs;
  PageController pageController = Get.arguments != null
      ? PageController(initialPage: Get.arguments["initialPage"])
      : PageController(initialPage: 0);
  final List<Widget> pages = [
    const FollowView(),
    const BetHistoryView(),
  ];
  @override
  void onInit() {
    if (Get.arguments != null) {
      currentIndex.value = Get.arguments["initialPage"];
      update();
    }

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setCurrentIndex(index) {
    currentIndex.value = index;
    update();
  }
}
