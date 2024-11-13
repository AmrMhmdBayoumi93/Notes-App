import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
   
  const NoteItem({super.key,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditNoteView()));
      },
      child: Container(
      
            // no width or height for this Container  for dynamic size
            // u can use just Padding fo sapce or padding attribute in Container()
      
        padding:const EdgeInsets.only(left:16,right: 12 ,top: 16 , bottom: 16) ,
        decoration: BoxDecoration(
          
        
              //   0xffFFCD79           0xffE7E895         0xff76D6EE
          color:Color(0xffE7E895) ,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
            crossAxisAlignment:CrossAxisAlignment.end,
          children: [
          ListTile(
      
            // dont use padding of ListTile()
           contentPadding: EdgeInsets.zero,
            title: const Padding(
              padding: EdgeInsets.only(left: 12.0 ,bottom:12, ),
              child: Text('Flutter tips',
                style: TextStyle( 
                  color: Colors.black,
                  fontSize: 26  ,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                )),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top :1.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                child: Text('Build your Career with Tharwat Samy',
                  style: TextStyle( 
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 20  ,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  )
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: (){
      
              },         //Icon( Icons.delete,)
              icon: const Icon(FontAwesomeIcons.trash  ,
              size: 28,
              color: Colors.black,),
            ),
          ),
      
         
          Padding(
            padding: const EdgeInsets.only(right: 16.0 , top:12,bottom: 12, left: 12,                 
                ),
            child: Text('May 21, 2024',
             style: TextStyle( 
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 18 ,
                  fontWeight: FontWeight.w400,
                )),
          ),
      
      
      
      
        ],)
      
      ),
    );
  }
}         