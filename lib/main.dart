import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/notes_view.dart';
  import 'package:hive_flutter/hive_flutter.dart';
void main() async{

    //  hive_flutter Package
    
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
    Hive.registerAdapter(NoteModelAdapter());
    
    Bloc.observer=SimpleBlocObserver();
       
   
   runApp(const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddNoteCubit>(
          create:(BuildContext context) => AddNoteCubit()
        ),
      


      ],
      
      
      child: MaterialApp(
          debugShowCheckedModeBanner: false ,
         // theme:ThemeData.dark(),
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
            ),
    
          home: const NotesView(),
        
        
        ),
    );
  }
}