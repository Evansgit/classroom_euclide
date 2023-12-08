import 'package:crypto_template/Screen/FullApps/Workout/core.dart';
import 'package:get/get.dart';

class TrainController extends GetxController {
  List<Exercise> exercises = [];

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() {
    exercises = ExerciseService().getExercises();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
