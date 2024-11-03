import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
    const AddNoteBottomSheet({super.key});
  
    @override
    Widget build(BuildContext context) {


//4- Provide the AddNoteCubit to the widget tree by MultiBlocProvider() or BlocProvider()
      // or use BlocProvider () in the Screen where u will use the AddNoteCubit() cubit
      // to save Resources
      // 
 
 
      return  BlocProvider<AddNoteCubit>(
        create: (context) => AddNoteCubit(),
        child: SizedBox(
            
              // width: double.infinity,
              width: MediaQuery.of(context).size.width,
                    child:  Padding(
            
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child:
            
                        //extract  Column AddNoteForm () is done
                   
                      // 5- Integrate Cubit with BlocConsumer or BlocBuilder
                       BlocConsumer<AddNoteCubit, AddNoteState>(
                      
                         builder: (context, state) {
                           return ModalProgressHUD(
                            inAsyncCall: state is AddNoteLoading?true:false,
                                 
                           child: SingleChildScrollView(
                            child: AddNoteForm()));
                         },
             
                         ////  ////      ////  ////  ////  ////  ////
                         listener: (context, state) {
                          
                           //Handle fail state
                          if (state is AddNoteFailure){
                            print('failed ${state.errorMessage}');
                             log('success ${state.errorMessage}');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                
                                content: Text('${state.errorMessage}'))
                            );
                          }
                        
                                  ////  ////  ////  ////  ////  ////
            
            
                           //success state
                           if(state is AddNoteSuccess){
            
                             Navigator.pop(context);
                              log('success ${state.successMessage}');
                              ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${state.successMessage}'))
                            );
                           }
            
            
                       
                       
                         },
                        
                       ),
            
            
                       
                    ),
             ),
      );



      








    }
  }
