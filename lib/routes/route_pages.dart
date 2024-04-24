import 'package:brave_baseui/base_widget/base_button.dart';
import 'package:brave_baseui/base_widget/base_image_icon.dart';
import 'package:brave_baseui/base_widget/base_text.dart';
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
  ];
}