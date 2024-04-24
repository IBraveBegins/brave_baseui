import 'package:get/get.dart';

import 'base_switch_checkbox_logic.dart';

class BaseSwitchCheckboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseSwitchCheckboxLogic());
  }
}
