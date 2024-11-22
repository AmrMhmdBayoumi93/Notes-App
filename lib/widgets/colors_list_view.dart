
  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {

final  bool isActive;
  
final Color color;
    const ColorItem ({super.key, required this.isActive, required this.color});


    @override
    Widget build(BuildContext context) {
      return  isActive?  CircleAvatar(
          backgroundColor: Colors.white,
            radius: 38,       
          child: CircleAvatar(
          
            backgroundColor:color,
            radius: 34,
          
          ),
        ):  CircleAvatar(
        
          backgroundColor: color,
          radius: 38,
        
     
 
      );
    }
      
    }
    

    class ColorsListView extends StatefulWidget {


      const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
      
      int currentIndex=0 ;
                      
                      // 7 colors item

  final List<Color>colors = const [
    Color(0xff557F8A),
       Color(0xffD4EF70),
          Color(0xffE0D856),
             Color.fromARGB(255, 181, 175, 126),
                Color.fromARGB(255, 83, 207, 11),
                Colors.yellow,
                Colors.red,
                
  ];

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
                      // update UI
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



