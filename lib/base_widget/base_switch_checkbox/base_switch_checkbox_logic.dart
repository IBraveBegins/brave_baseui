import 'package:get/get.dart';

import 'base_switch_checkbox_state.dart';

class BaseSwitchCheckboxLogic extends GetxController {
  final BaseSwitchCheckboxState state = BaseSwitchCheckboxState();

  void changeSwitchValue(bool value) {
    state.switchSelected = value;
    update();
  }

  void changeCheckboxValue(bool value) {
    state.checkboxSelected = value;
    update();
  }
}
