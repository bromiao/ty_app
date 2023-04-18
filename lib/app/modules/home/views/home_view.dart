import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../services/screenAdapter.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  //内容区域
  Widget _homePage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        child: ListView(
          // controller: controller.scrollController,
          children: [
            _level_1(),
            _banner(),
            _wallet(),
            _bulletin(),
            _leftMatchMenu(),
            _rightBallMenu(),
          ],
        ));
  }

  Widget _level_1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: ScreenAdapter.width(20),),
        Text('首页'),
        SizedBox(width: ScreenAdapter.width(20),),
        Text('热门'),
        SizedBox(width: ScreenAdapter.width(20),),
        Text('视频直播'),
      ],
    );
  }

  Widget _banner() {
    return SizedBox(
     
    );
  }

  Widget _wallet() {
    return SizedBox(
     
    );
  }

  Widget _bulletin() {
    return SizedBox(
     
    );
  }

  Widget _leftMatchMenu() {
    return SizedBox(
     
    );
  }

  Widget _rightBallMenu() {
    return SizedBox(
     
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _homePage()
        ],
      ),
    );
  }
}
