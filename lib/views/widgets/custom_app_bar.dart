import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          CustomIconWidget(),
        ],
      ),
    );
  }
}
