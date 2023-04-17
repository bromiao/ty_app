import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/follow_controller.dart';

class FollowView extends GetView<FollowController> {
  const FollowView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FollowView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FollowView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
