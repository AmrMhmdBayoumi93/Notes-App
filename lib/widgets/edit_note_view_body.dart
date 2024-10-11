import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

import 'custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0),

      child: Column(
        
        children: [
      
           SizedBox(height: 50,),
      
            CustomAppbar(
              title: 'Edit Note',
              icon:Icons.check,
            ),
 SizedBox(height: 50,),


          CustomTextFiled(
            labelText: 'Title',
             hintText: 'Title',
             maxLines: 1,
             ),


 SizedBox(height: 20,),


 
 CustomTextFiled(
  labelText: 'Content',
   hintText: 'Content',
   maxLines: 5,
   ),












      
      ],),
    );
  }
}