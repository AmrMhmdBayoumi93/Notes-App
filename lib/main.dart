import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/notes_view.dart';
  import 'package:hive_flutter/hive_flutter.dart';
void main() async {


  // Initialize Hive and register the adapter
  
  await Hive.initFlutter();// Initialize Hive
  Hive.registerAdapter(NoteModelAdapter()); // Register the adapter first

  // then Now open the box
  await Hive.openBox<NoteModel>(kNotesBox);

  Bloc.observer = SimpleBlocObserver();

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    //4- Provide the AddNoteCubit to the widget tree by MultiBlocProvider() or BlocProvider()
      // or use BlocProvider () in the Screen where u will use the AddNoteCubit() cubit
      // to save Resources
      
      // we will make BlocProvider() in AddNoteBottomSheet saving for resources


    return MaterialApp(
        debugShowCheckedModeBanner: false ,
       // theme:ThemeData.dark(),
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
          ),
        
        home: const NotesView(),
      
      
      );
  }
}