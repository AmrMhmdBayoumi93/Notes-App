import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
    @override
  void initState() {

//  6- Trigger Cubit by call the method fetchAllNotes()
      // 
       BlocProvider.of<NotesCubit>(context).fetchAllNotes();
      super.initState();
      

    }
  
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
          CustomAppbar(
            title:'Notes',
            icon:Icons.search,
          ),
            
        
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