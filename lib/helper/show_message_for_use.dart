import 'package:flutter/material.dart';

void showMessageForUser(BuildContext context , String message) {
     
     ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
            backgroundColor:Colors.green,
             content: Text(message,style: TextStyle(color: Colors.white),),)
         );
  }