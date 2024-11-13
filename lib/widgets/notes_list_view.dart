import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_state.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  // final List <Color> dataOfColors =const[
  
  //  Color(0xffE7E895),
   
  //   Color(0xffFFC0CB),
  //   Colors.purple,
  //   Colors.blue,

  //   Colors.green,
  //   Colors.yellow,
  //   Colors.orange,

  // ];
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state) {

        List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notes??[];

         return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      
        child: ListView.builder(



         padding: EdgeInsets.zero,
          
          // itemCount:state is NotesSuccess?state.notes.length:2 ,
          
            itemCount: notes.length,
          
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(
                  note:notes[index],
                ),
              );
            },
        ),
      );
      },
    );
  
  
  
  
  
  
  
  
  
  
  
  
  
  }













}