import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:third_note_app/models/note_model.dart';
import 'package:third_note_app/views/edit_note_view.dart';

class NoteItemWidget extends StatelessWidget {
  final NoteModel note;
  const NoteItemWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNoteView(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(note.subtitle,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      )),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 32,
                    )),
              ),
              Text(note.date,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
