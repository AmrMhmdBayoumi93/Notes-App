import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  final List <Color> dataOfColors =const[
  
   Color(0xffE7E895),
    Color(0xffFFC0CB),
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,

  ];
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),

      child: ListView.builder(
       padding: EdgeInsets.zero,
        itemCount: dataOfColors.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: NoteItem(color: dataOfColors[index],),
            );
          },
      ),
    );
  
  
  
  
  
  
  
  
  
  
  
  
  
  }













}