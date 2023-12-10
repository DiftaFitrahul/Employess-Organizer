import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:employees_organizer/model/constants/post_state.dart';
import 'package:employees_organizer/view/routes/routes.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/add_employee/header.dart';
import 'package:employees_organizer/view/widget/add_employee/textfield.dart';
import 'package:employees_organizer/view/widget/add_employee/user_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../viewModel/add_employee.dart';
import '../widget/add_employee/bottom_sheet.dart';

class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final addEmployeeController = Get.find<AddEmployeeController>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const HeaderAddEmployeeScreen(),
              Obx(() => UserImageAddEmployeeScreen(
                    imagePath: addEmployeeController.imagePath.value,
                    onTap: () async {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        isDismissible: true,
                        context: context,
                        builder: (ctx) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  'Tambahkan Foto Profile',
                                  style: TextStyle(),
                                ),
                              ),
                              BottomSheetAddEmployeeScreen(
                                title: 'Buka Galeri',
                                icon: Icons.photo,
                                onTap: () async {
                                  Navigator.pop(ctx);
                                  final XFile? image = await ImagePicker()
                                      .pickImage(source: ImageSource.gallery);
                                  if (image != null) {
                                    addEmployeeController.setImagePath(
                                        path: image.path);
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 17,
                              ),
                              BottomSheetAddEmployeeScreen(
                                title: 'Buka Kamera',
                                icon: Icons.camera_alt_rounded,
                                onTap: () async {
                                  Navigator.pop(ctx);
                                  final XFile? image = await ImagePicker()
                                      .pickImage(source: ImageSource.camera);
                                  if (image != null) {
                                    addEmployeeController.setImagePath(
                                        path: image.path);
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 50,
              ),
              Obx(
                () => TextFieldAddEmployeeScreen(
                  placeholder: 'Name',
                  icon: Icons.person,
                  controller: addEmployeeController.nameController.value,
                  isValid: addEmployeeController.isNameFieldFilled.value,
                  errorText: 'Nama tidak boleh kosong',
                ),
              ),
              Obx(() => TextFieldAddEmployeeScreen(
                    placeholder: 'Jobs',
                    icon: Icons.person,
                    controller: addEmployeeController.jobController.value,
                    isValid: addEmployeeController.isJobFieldFilled.value,
                    errorText: 'Jobs tidak boleh kosong',
                  )),
              const Expanded(child: SizedBox()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 19),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Colors.white),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                  fontFamily: poppins, fontWeight: semiBold),
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              elevation: 0,
                              backgroundColor: darkprimatyColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              addEmployeeController.checkField();
                              if (addEmployeeController.postState.value ==
                                  PostState.valid) {
                                Get.snackbar('Uploading...', 'Please wait.',
                                    duration: const Duration(seconds: 2));
                                addEmployeeController
                                    .createEmployee()
                                    .then((value) {
                                  if (value == PostState.success) {
                                    Get.offAllNamed(RoutesName.home);
                                  } else {
                                    Get.snackbar(
                                        'Error', 'Something went wrong.',
                                        duration: const Duration(seconds: 3));
                                  }
                                });
                              }
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: poppins,
                                  fontWeight: semiBold),
                            ))),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
