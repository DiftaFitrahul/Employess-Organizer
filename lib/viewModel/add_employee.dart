import 'package:get/get.dart';

class AddEmployeeController extends GetxController {
  RxString imagePath = ''.obs;

  void setImagePath({required String path}) {
    imagePath.value = path;
  }
}
