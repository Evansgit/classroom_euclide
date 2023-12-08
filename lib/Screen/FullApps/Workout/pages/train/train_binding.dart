import 'package:crypto_template/Screen/FullApps/Workout/core.dart';
import 'package:get/get.dart';

class TrainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TrainController>(TrainController());
  }
}
