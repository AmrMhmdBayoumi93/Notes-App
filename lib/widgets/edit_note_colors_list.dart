import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/add_note_colors_list_view.dart';
import 'package:notesapp/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {


  final NoteModel note;
  const EditNoteColorsList({super.key, required this.note});

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();

}







class _EditNoteColorsListState extends State<EditNoteColorsList> {

  late int currentIndex ;




  @override
  void initState() {
    currentIndex=colors.indexOf(Color(widget.note.color));
 
    // TODO: implement initState
    super.initState();
  
  }




  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 38*2,
          child: ListView.builder(
          
            scrollDirection: Axis.horizontal,
            
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GestureDetector(
                  onTap:(){
                    
                    currentIndex = index;
                    widget.note.color = colors[index].value;

                    setState(() {
                      
                    });     
                     
                  },

                  child: 
                   ColorItem( 
                    color: colors[index],
                    isActive: currentIndex==index?true:false ,
           //isActive: ,
                    ),
                ),
              );
            },
          ),
        );
  }
}