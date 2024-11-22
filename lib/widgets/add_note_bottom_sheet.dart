import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
    const AddNoteBottomSheet({super.key});
  
    @override
    Widget build(BuildContext context) {


//4- Provide the AddNoteCubit to the widget tree by MultiBlocProvider() or BlocProvider()
      // note  use BlocProvider () in the Screen where u will use the AddNoteCubit() cubit
      // to save Resources
      // 
 
  
      return  BlocProvider<AddNoteCubit>(
        create: (context) => AddNoteCubit(),
        child: SizedBox(
            
              // width: double.infinity,
              width: MediaQuery.of(context).size.width,

                    child: BlocConsumer<AddNoteCubit, AddNoteState>(

                      /// for listen and rebuild ui
                      ///
                           listener: (context, state) {
                       
                        //Handle fail state
                       if (state is AddNoteFailure){
                         print('failed ${state.errorMessage}');
                          log('success ${state.errorMessage}');
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                              backgroundColor:Colors.red,
                             content: Text(state.errorMessage))
                         );
                       }
                     
                               ////  ////  ////  ////  ////  ////
                                
                                
                        //success state
                        if(state is AddNoteSuccess){

                                  // for refreshing notes after adding new note
                                  //  trigger fetchAllNotes() method in NotesCubit
                                  // 
                          BlocProvider.of<NotesCubit>(context).fetchAllNotes();      
                          Navigator.pop(context);


                           log('success ${state.successMessage}');
                           ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                            backgroundColor:Colors.green,
                             content: Text(state.successMessage))
                         );
                        }
                                
                                
                    
                    
                      },                
                     


                         
                      builder:(context,state){
                      return AbsorbPointer(
                        absorbing: state is AddNoteLoading ? true : false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                       
                          child: Padding(
                            padding:  EdgeInsets.only(
                              left: 16.0,right: 16,
                              bottom: MediaQuery.of(context).viewInsets.bottom
                              ),
                              
                            child: const SingleChildScrollView(


                             child: AddNoteForm()),
                          ),
                        ),
                      );
                  
                      }
                                 
                      ////  ////      ////  ////  ////  ////  ////
                     
                     
                    ),
             ),
      );



      








    }
  }
