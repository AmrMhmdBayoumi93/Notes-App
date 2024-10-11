import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
    const AddNoteBottomSheet({super.key});
  
    @override
    Widget build(BuildContext context) {
      return  SingleChildScrollView(
        child: Container(
        
          // width: double.infinity,
          width: MediaQuery.of(context).size.width,
                child: Padding(
        
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column( 
                    
                    children: [


                      SizedBox(height: 40,),

                  
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


                    SizedBox(height: 30,),

                    CustomButton(),

                    SizedBox(height: 20,),
 
                    
                   
                   
                   
                    ],
                  ),
                ),
         ),
      );



      








    }
  }

 