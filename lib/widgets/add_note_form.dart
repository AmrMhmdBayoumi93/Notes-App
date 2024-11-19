import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title;
  String? subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter title';
              }
              return null;
            },
            labelText: 'Title',
            hintText: 'Title',
            maxLines: 1,
          ),
          const SizedBox(height: 20),
          CustomTextFiled(
            
            onSaved: (value) {
              subTitle = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Content';
              }
              return null;
            },
            labelText: 'Content',
            hintText: 'Content',
            maxLines: 5,
          ),
        
          // colors listview horizontal
          


        
          const SizedBox(height: 30),
        
        
        
          BlocBuilder<AddNoteCubit, AddNoteState>(
          
          
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedDate =
                        DateFormat('dd-MM-yyyy – HH:mm').format(currentDate);

                    var noteModel = NoteModel(
                      title: title ?? '',
                      subTitle: subTitle ?? '',
                      date: formattedDate,
                      color: Colors.yellow.value,
                    );

                    log('Created NoteModel successfully');
                    log('Title: ${noteModel.title}');
                    log('Subtitle: ${noteModel.subTitle}');

                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    log('Triggered AddNoteCubit successfully');
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
