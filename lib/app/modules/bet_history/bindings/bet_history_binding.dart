import 'package:get/get.dart';

import '../controllers/bet_history_controller.dart';

class BetHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BetHistoryController>(
      () => BetHistoryController(),
    );
  }
}
