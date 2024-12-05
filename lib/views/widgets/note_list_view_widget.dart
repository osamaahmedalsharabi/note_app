import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:third_note_app/models/note_model.dart';
import 'package:third_note_app/views/widgets/note_item_widget.dart';

class NoteListViewWidget extends StatelessWidget {
  const NoteListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNotesCubit, FetchNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<FetchNotesCubit>(context).notes;
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItemWidget(
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
