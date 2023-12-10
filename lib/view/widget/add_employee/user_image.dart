import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'bottom_sheet.dart';

class UserImageAddEmployeeScreen extends StatelessWidget {
  const UserImageAddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.grey),
      child: Stack(children: [
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.person,
            size: 100,
            color: Colors.white,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
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
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey),
              child: const Icon(
                Icons.edit_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
