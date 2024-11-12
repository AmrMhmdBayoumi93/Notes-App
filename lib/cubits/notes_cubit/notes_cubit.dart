

  //  notes cubit

    import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/notes_cubit/notes_state.dart';
import 'package:notesapp/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
      NotesCubit() : super(NotesInitial());

      void fetchAllNotes() {

         try {

   var box= Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = box.values.toList();

  emit(NotesSuccess(notes));
    log('done Successfully');
  }   

  
  catch (e) {
    emit(NotesFailure('message: ${e.toString()}'));
     log('sorry ,Failed to add note');
}


   
      }


      
    }