import 'package:flutter/material.dart';
import 'package:notesapp/screens/home_screen.dart';

void main() {


   runApp(const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
     
      home: const HomeScreen(),
    
    
    );
  }
}