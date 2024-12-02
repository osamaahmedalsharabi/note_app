import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 32),
        ),
        Spacer(),
       
      ],
    );
  }
}