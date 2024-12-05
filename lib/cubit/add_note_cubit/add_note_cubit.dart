import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:third_note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffE6EBE0);
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    await Future.delayed(const Duration(seconds: 2), () {
      try {
        var notes = Hive.box<NoteModel>("note_box");
        note.color = color.value;
        notes.add(note);
        emit(AddNoteSuccess());
      } catch (e) {
        emit(AddNoteFailure(errorMessage: e.toString()));
      }
    });
  }
}
