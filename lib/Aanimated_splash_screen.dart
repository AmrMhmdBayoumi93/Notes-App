import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notesapp/views/notes_view.dart';

class AanimatedSplashScreen extends StatefulWidget {
   const AanimatedSplashScreen({super.key});

  @override
  State<AanimatedSplashScreen> createState() => _AanimatedSplashScreenState();
}

class _AanimatedSplashScreenState extends State<AanimatedSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () { 
      Navigator.push(context,MaterialPageRoute(builder: (context){
        return const NotesView();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        color: Colors.black12, 
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height
        ,
        child: Column ( 
          mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [ 
             Lottie.asset('assets/LottieAnimation.json'), 
          ],
        )
      )
    );


  }
}