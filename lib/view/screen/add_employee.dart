import 'package:employees_organizer/view/widget/add_employee/header.dart';
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
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const HeaderAddEmployeeScreen(),
          UserImageAddEmployeeScreen(
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
          )
        ],
      ),
    )));
  }
}
