import 'package:employees_organizer/constants/font_family.dart';
import 'package:flutter/material.dart';

class TextFieldAuthWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String title;
  final String placeholderText;
  final IconData leadingIcon;
  final IconButton? trailingIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  const TextFieldAuthWidget(
      {super.key,
      required this.textEditingController,
      required this.title,
      required this.placeholderText,
      required this.leadingIcon,
      required this.validator,
      this.obscureText = false,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: poppins,
                  fontSize: 19)),
        ),
        const SizedBox(height: 10),
        TextFormField(
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          obscureText: obscureText,
          controller: textEditingController,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              hintText: placeholderText,
              prefixIcon: Icon(leadingIcon),
              suffixIcon: trailingIcon,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey))),
          validator: validator,
        ),
      ],
    );
  }
}
