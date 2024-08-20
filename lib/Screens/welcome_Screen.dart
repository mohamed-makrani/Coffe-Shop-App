import 'package:coffeshopapp/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'coffee shop',
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
             Column(
              children: [
                const Text(
                  'Feeling low? Take a Sip of Coffee',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1, // Applying opacity directly
                  ),
                ),
                const SizedBox(height: 80,),
                //////////////////////////////////////////////////////////////
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: 
                     (context)=> const HomeScreen(),
                    ));
                    ////////////////////////////////////////////////////
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 152, 9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Get start' ,style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                    ),),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
