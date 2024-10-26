  

  import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/models/note_model.dart';

  class AddNoteCubit extends Cubit<AddNoteState>{
    AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note){
         
         emit(AddNoteLoading());

         try {
  var box= Hive.box<NoteModel>(kNotesBox);
  box.add(note);
  emit(AddNoteSuccess('Successfully Added Note'));

  } 
  catch (e) {
    emit(AddNoteFailure('message: ${e.toString()}'));
}



                     }




           }  