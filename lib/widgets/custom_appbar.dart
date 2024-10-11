import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  
  //  note that final var because stl Widget and Const Constructor
  final String title; 
  final IconData icon;
  const CustomAppbar({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Row( 
      children: [
        Text(title, 
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          )
          ),
          Spacer( 
                 
          ),

     CustomSearchIcon(
        icon:icon,
     ),
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      ],





    );
  }
}