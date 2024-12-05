import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:third_note_app/models/note_model.dart';
import 'package:third_note_app/views/widgets/custom_app_bar.dart';
import 'package:third_note_app/views/widgets/custom_text_field_widget.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
              widget.note.save();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFieldWidget(
            onChange: (data) {
              title = data;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFieldWidget(
            onChange: (data) {
              subtitle = data;
            },
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
