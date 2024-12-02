import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: EditNoteViewBody(),
    ));
  }
}
