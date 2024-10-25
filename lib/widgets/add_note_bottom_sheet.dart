import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
    const AddNoteBottomSheet({super.key});
  
    @override
    Widget build(BuildContext context) {
      return  SingleChildScrollView(
        child: SizedBox(
        
          // width: double.infinity,
          width: MediaQuery.of(context).size.width,
                child: const Padding(
        
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child:

                    //extract  Column AddNoteForm ()
                  
                   AddNoteForm(),
                ),
         ),
      );



      








    }
  }
