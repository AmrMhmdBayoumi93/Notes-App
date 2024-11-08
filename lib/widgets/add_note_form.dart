
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  
  
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}



class _AddNoteFormState extends State<AddNoteForm> {
  @override

String? title;
  String? subTitle;
 final GlobalKey<FormState> formKey=GlobalKey();
 
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;


  @override
  Widget build(BuildContext context) {
    return Form(

      key: formKey,
      autovalidateMode: autoValidateMode,

      child: Column( 
       
       children: [
      
      
         const SizedBox(height: 40,),
      
                        
                        CustomTextFiled(

                          onSaved: (value){
                            title:value;
                          },
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter title';
                      } else {
                        return null;
                      }
                    },
                   labelText: 'Title',
                     hintText: 'Title',
                     maxLines: 1,
              
       ),
         const SizedBox(height: 20,),
              
                CustomTextFiled(

                   onSaved: (value){
                            subTitle:value;
                          },


                          
                          validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter Content';
                      } else {
                        return null;
                      }
                    },

                 labelText: 'Content',
                    hintText: 'Content',
                          maxLines: 5,
       ),
      
      
       const SizedBox(height: 30,),
      
           
           
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                          onTap: (){

                      isLoading:state is AddNoteLoading ? true:false;
              // isLoading:true;


              
                           if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
            
            
                          var noteModel=NoteModel(
                            title: title?? '',         // handle nulll
                            subTitle: subTitle?? '', // handle nulll
                            date: DateTime.now().toString(),
                            color: Colors.blue.value,
                            
                            );
            
                            log('we have create model OK');
                             log('title is ${noteModel.title}');
            
                             log('subTitle is ${noteModel.subTitle}');
             
                            //6-Trigger AddNoteCubit by  BlocProvider.of<AddNoteCubit>(context)
                              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                              
                         log('trigger AddNoteCubit OK') ;
            
                            }
                         
            
            
                            else{
                            autoValidateMode = AutovalidateMode.always;
            
                            setState(() {
                              
                            });
                          
                           }
                          
                          },
                        );
              },
            ),
      
       const SizedBox(height: 20,),
       
       
      
      
      
       ],
                        ),
    );
  }
}

 