import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0 ,
      horizontal: 24.0),  
      child: Column( 
        children: [ 
          SizedBox( 
            height: 50,
          ),
        CustomAppbar(),
          
           // Card()
           SizedBox(height: 30,),
              NoteItem(),
 SizedBox(height: 10,),
   NoteItem(),



































        ],
      ),
    );
  }
}