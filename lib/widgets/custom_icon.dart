 import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

   const CustomIcon({super.key, required this.icon, this.onPressed});
    final void Function ()? onPressed;
   @override
   Widget build(BuildContext context) {
     return Container(
       width: 45,
       height: 45,
       decoration: BoxDecoration(
         color: Colors.white.withOpacity( 0.3),
         borderRadius: BorderRadius.circular(16),
       ),
       child:  IconButton(
        icon:Icon(icon,
        color: Colors.white,
        size: 26,), 
        

        onPressed:onPressed,



     ));



   }
 }
