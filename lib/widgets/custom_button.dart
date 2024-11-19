import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';




class CustomButton extends StatelessWidget {

  bool isLoading;
   CustomButton({super.key,this.onTap,this.isLoading=false});

void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // width :double.infinity,
        height: 55,
      
      decoration: BoxDecoration( 
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
        child:isLoading ==true ? const SizedBox(
           width:24,
          height:24,
          child: CircularProgressIndicator(
            color: Colors.black,
           
          ),
        )
        : const Center(child: 
        Text('Add', 
        style: TextStyle( 
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),),),
      
      
      
      
      
      
      ),
    );
  }
}