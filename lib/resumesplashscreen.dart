import 'package:flutter/material.dart';
import 'package:resumeapp/personaldetail.dart';

class resumespalsh extends StatelessWidget {
  const resumespalsh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown.shade100,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text('Easy CV Maker Resume Builder',style: TextStyle(color: Colors.deepPurple.shade800,fontSize: 25,fontWeight: FontWeight.bold,),),
                ),
                Text('Free PDF Templates',style: TextStyle(color: Colors.deepPurple.shade800,fontSize: 25,fontWeight: FontWeight.bold,),),
                Padding(
                  padding: const EdgeInsets.only(top:160),
                  child: Image.asset("assets/cv image.webp"),
                ),
                SizedBox(height: 20),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 135),
                     child: InkWell(
                       onTap: () {
                         Navigator.pushNamed(context, '/personaldetail');
                       },
                       child: Container(height: 60,width: 130,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade700),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13,left: 28),
                          child: Text('START',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                       ),
                     ),
                   ),
                 ],
               )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

