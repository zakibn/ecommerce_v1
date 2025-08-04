import 'package:get/get.dart';

import '../core/class/crud.dart';
import '../core/class/crud_1.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start
    Get.put(Crud());
    Get.put(Crud_1());
  }
}
