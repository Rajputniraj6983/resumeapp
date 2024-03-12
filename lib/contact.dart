import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

 TextEditingController email=TextEditingController();
 TextEditingController phone=TextEditingController();
 TextEditingController address=TextEditingController();

Map introduction={};

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        backgroundColor: Color(0xffEFF6FF),
         appBar: AppBar(backgroundColor: Color(0xffEFF6FF),
           leading: Row(
             children: [
               SizedBox(width: 10,),
               Icon(Icons.arrow_back_ios,color: Colors.blue.shade800,),

             ],
           ),
           actions: [
             SizedBox(width: 40,),
             Text("Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue.shade800),),SizedBox(width: 80),
             Text("Contact",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
             Spacer(),
           ],
        ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text('E-Mail',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
                    hintText: 'admin@gmail.com'
                   ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text('Phone',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
                      hintText: '+91 ********48'
                  ),

                  ),
                ), SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text('Phone',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    controller: address,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
                      hintText: '129 street st new york ny 10030',
                  ),

                  ),
                ),
                SizedBox(height: 350),
                Container(height: 60,width: 350,
                  child: InkWell(onTap:
                      () {
                    Navigator.pushNamed(context, '/skills');
                    introduction = {
                      'name':email,
                      'birthday':phone,
                      'personalstatement':address,
                    };
                  },
                      child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                       )
                      )
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade700),)
              ],
            ),
          ),
       ),
      )
    );
  }
}
