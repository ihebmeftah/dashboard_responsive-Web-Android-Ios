import 'package:get/get.dart';

import '../views/screens/dashboardscreen.dart';

class Approutes {
  //initialRoute
  static const dash = Routes.dash;

  //getPages
  static final routes = [
    GetPage(
      name: Routes.dash,
      page: () => const Dashboardscreen(),
    ),
  ];
}

class Routes {
  static const dash = '/Dash';
}
