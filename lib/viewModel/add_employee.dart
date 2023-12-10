import 'package:employees_organizer/model/constants/post_state.dart';
import 'package:flutter/material.dart' show TextEditingController;
import 'package:get/get.dart';

import '../model/classModel/post_employee.dart';
import '../model/repository/employee.dart';

class AddEmployeeController extends GetxController {
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> jobController = TextEditingController().obs;
  Rx<PostState> postState = PostState.initial.obs;
  RxBool isNameFieldFilled = true.obs;
  RxBool isJobFieldFilled = true.obs;
  RxString imagePath = ''.obs;

  void setImagePath({required String path}) {
    imagePath.value = path;
  }

  void checkField() {
    if (nameController.value.text.isEmpty && jobController.value.text.isEmpty) {
      isNameFieldFilled.value = false;
      isJobFieldFilled.value = false;
      postState.value = PostState.notValid;
    } else if (nameController.value.text.isEmpty) {
      isNameFieldFilled.value = false;
      postState.value = PostState.notValid;
    } else if (jobController.value.text.isEmpty) {
      isJobFieldFilled.value = false;
      postState.value = PostState.notValid;
    } else {
      isNameFieldFilled.value = true;
      isJobFieldFilled.value = true;
      postState.value = PostState.valid;
    }
  }

  Future<PostState> createEmployee() async {
    try {
      final response = await EmployeeService().createEmployee(
          model: PostEmployee(
              name: nameController.value.text, job: jobController.value.text));

      if (response.status.hasError) {
        return PostState.error;
      }

      return PostState.success;
    } catch (e) {
      return PostState.error;
    }
  }
}
