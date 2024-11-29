import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/helper/show_message_for_use.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_textfield.dart';
import 'package:notesapp/widgets/edit_note_colors_list.dart';

import 'custom_appbar.dart';

class EditNoteViewBody extends StatefulWidget {
  
  final NoteModel note;  // object of NoteModel class
  
  const EditNoteViewBody({
    super.key, required this.note, 
  });           // Constructor of EditNoteViewBody class

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String ? title ,subTitle;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0),

      child: Column(
        
        children: [
      
           const SizedBox(height: 50,),
      

      //  custom appbar has custom icon
   
            CustomAppbar(
              onPressed: (){
                // when check icon.check
                      // pass values of title and subTitle to note object  form TF by user
                    widget.note.title = title?? widget.note.title;
                    widget.note.subTitle = subTitle?? widget.note.subTitle;
                      // save data of new title of subTitle  
                      widget.note.save();
                      // refresh list of notes
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                   
                    // navigate to home page
                      Navigator.pop(context);

                    // show message to user
                    showMessageForUser(context,'Note Edited Successfully');

              },
              title: 'Edit Note',
              icon:Icons.check,
           
            ),

 const SizedBox(height: 50,),


             CustomTextFiled(
              onChanged: (value){
                  title = value;
              },
            
            labelText: 'Title',
             hintText: widget.note.title,
             maxLines: 1,
             ),


 const SizedBox(height: 20,),



  CustomTextFiled(
 
  onChanged: (value){
                  subTitle = value;
              },
 
  labelText: 'Subtitle',
   hintText: widget.note.subTitle,
   maxLines: 5,
   ),
 
 
 
  ////////////////////
  
  
    
         // Colors List
          // create EditNoteColorsList 

          const SizedBox(height:3,),


        EditNoteColorsList(
           note:widget.note,
        ),


          لهف






      
      ],),
    );
  }

  
}