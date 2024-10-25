
import 'package:flutter/material.dart';
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
      
           
           
            CustomButton(
              onTap: (){
               if(formKey.currentState!.validate()){
                formKey.currentState!.save();
               } else{
                autoValidateMode =AutovalidateMode.always;
                
                setState(() {
                  
                });
              
               }
              
              },
            ),
      
       const SizedBox(height: 20,),
       
       
      
      
      
       ],
                        ),
    );
  }
}

 