import 'package:get/get.dart';

import '../modules/bet_history/bindings/bet_history_binding.dart';
import '../modules/bet_history/views/bet_history_view.dart';
import '../modules/follow/bindings/follow_binding.dart';
import '../modules/follow/views/follow_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FOLLOW,
      page: () => const FollowView(),
      binding: FollowBinding(),
    ),
    GetPage(
      name: _Paths.BET_HISTORY,
      page: () => const BetHistoryView(),
      binding: BetHistoryBinding(),
    ),
  ];
}
