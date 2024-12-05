import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:third_note_app/models/note_model.dart';

part 'fetch_notes_state.dart';

class FetchNotesCubit extends Cubit<FetchNotesState> {
  FetchNotesCubit() : super(FetchNotesInitial());
  List<NoteModel> notes = [];
   fetchNotes() {
    var note = Hive.box<NoteModel>("note_box");
    notes = note.values.toList();
    emit(FetchNotesDelete());
  }
}
