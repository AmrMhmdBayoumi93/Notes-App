
import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextFiled extends StatelessWidget {
  
  final String? labelText;
  final String? hintText;
  final int maxLines; 
  
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  const CustomTextFiled({
    super.key, required this.labelText,
    required this.hintText,  this.maxLines=1,
      this.onSaved,this.validator,
      
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,

      maxLines: maxLines,
      
    style:const TextStyle(fontSize: 24),
     cursorColor: kPrimaryColor,
        
     decoration: InputDecoration(
    
       labelText: labelText,
       labelStyle: const TextStyle(color:kPrimaryColor ,),
       
       hintText: hintText,
       hintStyle: const TextStyle(color:kPrimaryColor ,),
        
      border: OutlineInputBorder( 
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.white,
        ),
      ),
     
    
    
    
      enabledBorder:  OutlineInputBorder( 
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
            color:kPrimaryColor,
        ),
      ),
    
    
    
      focusedBorder: OutlineInputBorder( 
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color:kPrimaryColor,
        ),
      ),
    
    
    
    
     ),
    ); 
    
    }
}