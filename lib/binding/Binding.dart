import 'package:get/instance_manager.dart';
import 'package:igenerate_17/controller/get_controller.dart';

class UiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UiController>(() => UiController());
  }
}
