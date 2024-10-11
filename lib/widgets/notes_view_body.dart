import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

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
            height: 15,
          ),
        CustomAppbar(),
          

          //ListView.builder inside Expanded()in a Column()
          // to make it take the remaining space
           // Card()
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: NotesListView(),
            )),



































        ],
      ),
    );
  }
}