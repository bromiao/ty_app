import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../follow/controllers/follow_controller.dart';
import '../../bet_history/controllers/bet_history_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<FollowController>(
      () => FollowController(),
    );
    Get.lazyPut<BetHistoryController>(
      () => BetHistoryController(),
    );
  }
}
