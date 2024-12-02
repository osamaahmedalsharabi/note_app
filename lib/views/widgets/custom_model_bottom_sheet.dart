import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_text_field_widget.dart';

class CustomModelBottomSheet extends StatelessWidget {
  const CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          SizedBox(
            height: 8,
          ),
          CustomTextFieldWidget(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextFieldWidget(
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
