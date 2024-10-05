import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0 ,
      horizontal: 24.0),  
      child: Column( 
        children: [ 
          SizedBox( 
            height: 50,
          ),
        CustomAppbar(),
          
          
        ],
      ),
    );
  }
}