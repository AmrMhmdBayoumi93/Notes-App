import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
      // modifiction in Provide NotesCubit in NotesView not NotesViewBody
      
    return  BlocProvider <NotesCubit>(
      create: (BuildContext context) { 
        return NotesCubit(); 
        
        },
      child: Scaffold( 
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.black,
          onPressed: (){ 
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(20)
                
              ),
              // barrierColor: Colors.red,
              // backgroundColor: Colors.green,
              // 
              // isScrollControlled: true,
              context: context,
               builder: (context) 
            => const AddNoteBottomSheet());
      
      
      
      
      
      
          },
          child: const Icon(Icons.add),
        ),
        
      
        body: const NotesViewBody(),
         
      ),
    );
  }
}

  