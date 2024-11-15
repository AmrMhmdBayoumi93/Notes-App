import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {

final NoteModel note;
  const NoteItem({super.key, required this.note,});

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
          color:Color(note.color) ,
          




          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
            crossAxisAlignment:CrossAxisAlignment.end,
          children: [
          ListTile(
      
            // dont use padding of ListTile()
           contentPadding: EdgeInsets.zero,
            title:  Padding(
              padding: EdgeInsets.only(left: 12.0 ,bottom:12, ),

               // fix it   // title and subtitle are in ListTile do not appear in the screen
               // done
                /////////////////////////////////////////
                ///
                ////////////////////////////////
              child: Text( note.title,
                

                style: const TextStyle( 
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
                child: Text(note.subTitle,
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
                //delete note 
      
              },         //Icon( Icons.delete,)
              icon: const Icon(FontAwesomeIcons.trash  ,
              size: 28,
              color: Colors.black,),
            ),
          ),
      
         
          Padding(
            padding: const EdgeInsets.only(right: 16.0 , top:12,bottom: 12, left: 12,                 
                ),
            child: Text(note.date,
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