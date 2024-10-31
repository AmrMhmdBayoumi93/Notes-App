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
      return  SingleChildScrollView(
        child: SizedBox(
        
          // width: double.infinity,
          width: MediaQuery.of(context).size.width,
                child:  Padding(
        
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child:

                    //extract  Column AddNoteForm () is done
                  
                   BlocConsumer<AddNoteCubit, AddNoteState>(
                  
                     builder: (context, state) {
                       return ModalProgressHUD(
                        inAsyncCall: state is AddNoteLoading?true:false,

                       child: AddNoteForm());
                     },

                     ////  ////      ////  ////  ////  ////  ////
                     listener: (context, state) {
                      
                       //Handle fail state
                      if (state is AddNoteFailure){
                        print('failed ${state.errorMessage}');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            
                            content: Text('${state.errorMessage}'))
                        );
                      }
                    
                              ////  ////  ////  ////  ////  ////


                       //success state
                       if(state is AddNoteSuccess){

                         Navigator.pop(context);
                          
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
