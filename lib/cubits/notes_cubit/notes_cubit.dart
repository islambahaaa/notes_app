import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notesList = notesBox.values.toList();
      emit(NotesSuccess(notesList));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
