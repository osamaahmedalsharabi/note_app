import 'package:flutter/material.dart';
import 'package:third_note_app/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: kPrimayColor, borderRadius: BorderRadius.circular(8)),
        child: const Text(
          "Add",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
