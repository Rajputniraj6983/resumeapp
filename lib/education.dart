import 'package:flutter/material.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}
    TextEditingController educations=TextEditingController();
     Map introduction={};
       
class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SafeArea(
         child: Scaffold(
           backgroundColor: Color(0xffEFF6FF),
            appBar: AppBar(
                backgroundColor: Color(0xffEFF6FF),
                 centerTitle: true,
                  leading: Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.blue.shade800,),
                    ],
                  ),
              actions: [
                SizedBox(width: 30),
                Text('Back',style: TextStyle(color: Colors.blue.shade800,fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(width: 40),
                Text('Education History',style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                Spacer(),
              ],
            ),
           body: Padding(
             padding: const EdgeInsets.only(left: 20,top: 600),
             child: Column(
               children: [
                 Container(height: 60,width: 350,
                   child: Center(child: Text('Add Education',style: TextStyle(color: Colors.blue.shade800,fontWeight: FontWeight.bold,fontSize: 20),)),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.blue.shade800,width: 2)),),
                 SizedBox(height: 15),
                 Container(height: 60,width: 350,
                   child: InkWell(onTap:
                       () {
                     Navigator.pushNamed(context, '/experience');
                     introduction = {
                       'name':education,
                     };
                   },
                       child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),))
                   ),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade700),)

               ],
             ),
           ),
         ),
       ),
    );
  }
}
