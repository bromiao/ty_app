import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bet_history_controller.dart';

class BetHistoryView extends GetView<BetHistoryController> {
  const BetHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BetHistoryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BetHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
