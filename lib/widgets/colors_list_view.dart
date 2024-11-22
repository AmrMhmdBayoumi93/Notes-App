
  import 'package:flutter/material.dart';

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
                      
                      // 6 colors item

  final List<Color>colors = const [
    Color(0xffC4F1BE),
       Color(0xffA2C3A4),
          Color(0xff869D96),
             Color(0xff525B76),
                Color(0xff201E50),
                Colors.yellow,
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

                    currentIndex=index;
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



