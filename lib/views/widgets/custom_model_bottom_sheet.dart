import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/add_note_form.dart';

class CustomModelBottomSheet extends StatelessWidget {
  const CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const AddNoteForm(),
    );
  }
}
