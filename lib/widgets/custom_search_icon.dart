 import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;

   const CustomSearchIcon({super.key, required this.icon});
 
   @override
   Widget build(BuildContext context) {
     return Container(
       width: 45,
       height: 45,
       decoration: BoxDecoration(
         color: Colors.white.withOpacity( 0.3),
         borderRadius: BorderRadius.circular(16),
       ),
       child:  Icon(icon,
        color: Colors.white,
        size: 26,),



     );



   }
 }
