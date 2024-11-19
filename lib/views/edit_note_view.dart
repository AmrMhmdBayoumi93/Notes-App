import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  final NoteModel note;

  const EditNoteView({super.key,required this.note});
    
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      
          // icon in app bar 
        body:EditNoteViewBody(
          note:note,
        )
        

    
    
    
    
    
    
    
    
    
    );
  }
}

