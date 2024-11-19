import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  
  //  note that final var because stl Widget and Const Constructor

  final String title; 
  final IconData icon;
  final  void Function()? onPressed;
  const CustomAppbar({super.key, required this.title, required this.icon, this.onPressed});

  @override  
  Widget build(BuildContext context) {
    return  Row( 
      children: [
        Text(title, 
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          )
          ),
     
          const Spacer( 
                 
          ),

     CustomIcon(
      onPressed:onPressed,
        icon:icon,
     
     ),
     

     
     
     
     
     
     
     
     
     
     
     
     
     
      ],





    );
  }
}