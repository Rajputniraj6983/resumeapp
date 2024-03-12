import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resumeapp/contact.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}
 TextEditingController name=TextEditingController();
 TextEditingController birthday=TextEditingController();
 TextEditingController personalstaement=TextEditingController();

Map introduction={};

bool istrue =false;
class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffEFF6FF),
          appBar: AppBar(backgroundColor: Color(0xffEFF6FF),
            centerTitle: true,
            leading: Row(
              children: [
                InkWell(
                    onTap: () {
                     Navigator.pushNamed(context, '/persoanldetail');
                    },
                child: Icon(Icons.arrow_back_ios,color: Colors.blue,)),
                Text('Back',style: TextStyle(color: Colors.blue),)
              ],
            ),
            title: Text('Intro',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: (!istrue)?Container(height: 150,width: 200,decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: Colors.blue.shade800)
                  ),child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Icon(Icons.person,size: 80,color: Colors.blue),
                      ),
                      Text('photo',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  ):CircleAvatar(radius:70,backgroundImage: (imgpath != null)?FileImage(imgpath!):null,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Tap to Upload',style: TextStyle(color: Colors.black,),),IconButton(onPressed: (){setState(() {
                      istrue=true;
                      setimage();
                    });}, icon:Icon(Icons.photo_camera))
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text('Name',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Darshan Patel',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text('Birthday',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    controller: birthday,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: '11 mar 2024',
                    ),
                  ),
                ), SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text('Personal Statement',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'I Am Hard-Working individual with a passion...',
                    ),
                  ),
                ),
                SizedBox(height: 150),
                Container(height: 60,width: 350,
                  child: InkWell(onTap:
                      () {
                        Navigator.pushNamed(context, '/contact');
                        introduction = {
                          'name':name,
                          'birthday':birthday,
                          'personalstatement':personalstaement,
                        };
                      },
                      child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),))) ,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade700),)
              ],
            ),
          ),

        ),
      ),
    );

  }
  Future<void> setimage()
  async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imgpath=File(image!.path);
    });
  }
}

ImagePicker picker = ImagePicker();
File? imgpath;
