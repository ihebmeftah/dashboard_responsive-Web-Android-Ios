import 'package:get/get.dart';

class Controller extends GetxController {
  int selcted = 0;
  List<bool> navBackcolor = [true, false, false, false];
  navigation(int? index) {
    selcted = index!;
    update();
  }
}
