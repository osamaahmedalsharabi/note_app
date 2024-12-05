import 'package:flutter/material.dart';
import 'package:third_note_app/models/note_model.dart';
import 'package:third_note_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  final NoteModel note;
  const EditNoteView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: EditNoteViewBody( 
        note : note
      ),
    ));
  }
}
