import 'package:flutter/material.dart';

class persoanldetail extends StatefulWidget {
  const persoanldetail({super.key});

  @override
  State<persoanldetail> createState() => _persoanldetailState();
}

class _persoanldetailState extends State<persoanldetail> {
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
                Icon(Icons.arrow_back_ios,size: 20,color: Colors.blue.shade800,),
                Text('Back',style: TextStyle(color: Colors.blue.shade800,fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            title: Text('Edit Details',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
            actions: [Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.delete,color: Colors.blue.shade800,size: 28,),
            ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Untitled Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/intro');
                      },
                      child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                                child: Icon(Icons.person,size: 32,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('personal',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 170),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                                child: Icon(Icons.mail,size: 32,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Contact',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 175),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/skills');
                      },
                      child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                                child: Icon(Icons.construction,size: 32,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Skills',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 195),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/education');
                      },
                      child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                                child: Icon(Icons.school,size: 38,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Educations',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 140),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(onTap:
                      () {
                        Navigator.pushNamed(context, '/experience');
                      },
                      child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                                child: Icon(Icons.shopping_bag,size: 30,color: Colors.black,),),
                            ),SizedBox(width: 20),
                            Text('Experience',style: TextStyle(color: Colors.black,fontSize: 20),),
                            SizedBox(width: 140),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                              child: Icon(Icons.person_add_rounded,size: 30,color: Colors.black,),),
                          ),SizedBox(width: 20),
                          Text('Refrences',style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(width: 140),
                          Icon(Icons.star,size: 30,color: Colors.yellow,)
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                              child: Icon(Icons.star,size: 30,color: Colors.black,),),
                          ),SizedBox(width: 20),
                          Text('Certificates',style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(width: 125),
                          Icon(Icons.star,size: 30,color: Colors.yellow,)
                        ],
                      ),
                    ),
                  ),SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                              child: Icon(Icons.flight,size: 30,color: Colors.black,),),
                          ),SizedBox(width: 20),
                          Text('Hobbies',style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(width: 155),
                          Icon(Icons.star,size: 30,color: Colors.yellow,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(height: 50,width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.blueAccent.shade100,
                              child: Icon(Icons.person_add_rounded,size: 30,color: Colors.black,),),
                          ),SizedBox(width: 20),
                          Text('Languages',style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(width: 130),
                          Icon(Icons.star,size: 30,color: Colors.yellow,)
                        ],
                      ),

                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

