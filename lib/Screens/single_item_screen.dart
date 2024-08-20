import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingleItemScreen extends StatelessWidget {
  final String img;

  // Constructor with positional parameter
  SingleItemScreen(this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Image.asset('images/$img.png',
                  width: MediaQuery.of(context).size.width /2,

                  ),
                ),
                 SizedBox(height: 50,),
                 Padding(padding: EdgeInsets.only(left: 25,right: 40),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text('Best Coffee ',style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),),
                      SizedBox(height: 50,),
                      Text(img ,style: const TextStyle(
                        fontSize: 30 ,
                        letterSpacing: 1,
                        color: Colors.white,
                        
                      ),),
                      SizedBox(height: 25,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      Icon(CupertinoIcons.minus,size: 18,
                                      color: Colors.white,
                                      )  ,  
                                      SizedBox(width:15 ,) ,
                                      Text('2',style: TextStyle(
                                                  color: Colors.white,
                                              fontSize: 16,
                                               fontWeight:  FontWeight.w500

                                      ),),
                                      SizedBox(width:15 ,) ,
                                       Icon(CupertinoIcons.minus,size: 18,
                                      color: Colors.white,
                                      )  ,  

                                  ],
                                ),
                            ),
                            Text('\$ 30.20', style: TextStyle(
                                 fontSize: 18, 
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white,
                            ),)
                          ],
                        ),
                      ),
                     ],
                ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
