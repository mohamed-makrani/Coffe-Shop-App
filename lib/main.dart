import 'package:coffeshopapp/Screens/welcome_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
   Widget build(BuildContext  context){
     return MaterialApp(
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(230, 0, 0, 1),
         ),
         home: WelcomeScreen(),
     );


   }
}