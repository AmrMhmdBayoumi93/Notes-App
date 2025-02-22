

  //  notes cubit

    import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/notes_cubit/notes_state.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/Aanimated_splash_screen.dart';
import 'package:notesapp/views/notes_view.dart';

class NotesCubit extends Cubit<NotesState> {
      NotesCubit() : super(NotesInitial());

 
  List<NoteModel> ?notes ;     // notes stored in cubit not SuccessNoteState

      void fetchAllNotes() {

         
   var box= Hive.box<NoteModel>(kNotesBox);
     notes = box.values.toList();
     
        emit(NotesSuccess());            // for rebuild UI after succefully operation delete or add or update note


    log('done Successfully');

  }   



      
    }