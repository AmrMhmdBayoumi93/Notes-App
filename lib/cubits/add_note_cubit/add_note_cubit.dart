  

  import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/models/note_model.dart';

    // 
    
    //2- Create Cubit
    //3- Create Function


  class   AddNoteCubit extends Cubit<AddNoteState>{   // <Parent State>
    AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note)async{
         
    emit(AddNoteLoading());

         try {

   var box= Hive.box<NoteModel>(kNotesBox);
   await box.add(note);  
  emit(AddNoteSuccess('Successfully Added Note'));
    log('done Successfully');
  }   
  catch (e) {
    emit(AddNoteFailure('message: ${e.toString()}'));
     log('sorry ,Failed to add note');
}



      }               




           }  