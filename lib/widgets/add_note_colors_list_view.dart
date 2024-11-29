
  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/widgets/color_item.dart';

    

    class ColorsListView extends StatefulWidget {


      const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
      
      int currentIndex=0 ;


                     
  

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

                     // for active checked color or not
                    currentIndex=index;     
                        // for send color to cubit variable of color
                    BlocProvider.of<AddNoteCubit>(context).color=colors[index]; 
                      // for  update UI
                    setState(() {
                      
                    });
                  },

                  child: 
                   ColorItem( 
                    color: colors[index],
                    // isActive: true,
                    isActive: currentIndex==index?true : false,
                    ),
                ),
              );
            },
          ),
        );
      }
}



