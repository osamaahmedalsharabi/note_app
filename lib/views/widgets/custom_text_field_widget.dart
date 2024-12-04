import 'package:flutter/material.dart';
import 'package:third_note_app/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimayColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimayColor),
        enabledBorder: buildBorder(),
        errorBorder: buildBorder(color: Colors.red),
        focusedErrorBorder: buildBorder(color: Colors.red),
        focusedBorder: buildBorder(color: kPrimayColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
