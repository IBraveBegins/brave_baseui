import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_switch_checkbox_logic.dart';

class BaseSwitchCheckboxPage extends StatelessWidget {
  BaseSwitchCheckboxPage({super.key});

  final logic = Get.find<BaseSwitchCheckboxLogic>();
  final state = Get.find<BaseSwitchCheckboxLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch&Checkbox"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GetBuilder<BaseSwitchCheckboxLogic>(builder: (logic) {
          return Column(
            children: [
              Switch(
                  value: state.switchSelected,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    logic.changeSwitchValue(value);
                  }),
              Checkbox(
                  value: state.checkboxSelected,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    logic.changeCheckboxValue(value!);
                  })
            ],
          );
        }),
      ),
    );
  }
}
