import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextFieldWidget(
      {super.key, required this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xff63FFDA)),
        enabledBorder: buildBorder(),
        errorBorder: buildBorder(color: Colors.red),
        focusedBorder: buildBorder(color: const Color(0xff63FFDA)),
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
