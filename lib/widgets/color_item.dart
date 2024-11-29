
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {

final  bool isActive;
final Color color;

    const ColorItem ({super.key, required this.isActive, required this.color});


    @override
    Widget build(BuildContext context) {
      return  isActive?  CircleAvatar(
          backgroundColor: Colors.white,
            radius: 38,       
          child: CircleAvatar(
          
            backgroundColor:color,
            radius: 34,
          
          ),
        )  :  CircleAvatar(
        
          backgroundColor: color,
          radius: 38,
        
     
 
      );
    }
      
    }