import 'package:brave_baseui/base_widget/base_button.dart';
import 'package:brave_baseui/base_widget/base_form.dart';
import 'package:brave_baseui/base_widget/base_image_icon.dart';
import 'package:brave_baseui/base_widget/base_progress.dart';
import 'package:brave_baseui/base_widget/base_switch_checkbox/base_switch_checkbox_binding.dart';
import 'package:brave_baseui/base_widget/base_switch_checkbox/base_switch_checkbox_view.dart';
import 'package:brave_baseui/base_widget/base_text.dart';
import 'package:brave_baseui/base_widget/base_textfield.dart';
import 'package:brave_baseui/routes/route_path.dart';
import 'package:get/get.dart';

import '../main.dart';

class RoutePages {
  static final List<GetPage> getPages = [
    GetPage(
      name: RoutePath.main,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RoutePath.text,
      page: () => const BaseText(),
    ),
    GetPage(
      name: RoutePath.button,
      page: () => const BaseButton(),
    ),
    GetPage(
      name: RoutePath.imageIcon,
      page: () => const BaseImageIcon(),
    ),
    GetPage(
      name: RoutePath.switchCheckbox,
      page: () => BaseSwitchCheckboxPage(),
      binding: BaseSwitchCheckboxBinding(),
    ),
    GetPage(
      name: RoutePath.textField,
      page: () => const BaseTextField(),
    ),
    GetPage(
      name: RoutePath.form,
      page: () => const BaseForm(),
    ),
    GetPage(
      name: RoutePath.progress,
      page: () => const BaseProgress(),
    ),
  ];
}
