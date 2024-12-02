import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_app_bar.dart';
import 'package:third_note_app/views/widgets/custom_text_field_widget.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
          ),
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
