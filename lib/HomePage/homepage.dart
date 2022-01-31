import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:helal_project/HomePage/AdmissionForm.dart';
import 'package:helal_project/RegistrationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>
      new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit PCTI App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
              'No',
              style: TextStyle(color: Colors.green[800]),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text(
              'Yes',
              style: TextStyle(color: Colors.red[800]),
            ),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,

      child: Scaffold(
          backgroundColor: Colors.lightGreen,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("PCTI",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w300,fontFamily: "Bushetch",color: Colors.deepOrange),),
            centerTitle: true,
          ),

          drawer: SafeArea(
            child: Drawer(
              child: ListView(
                children: <Widget>[

                  DrawerHeader(child:

                  Column(
                    children: [
                      Text("PCTI",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Palonkali Computer Training Institute",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                   SizedBox(
                     height: 20,
                   ),
                      Text("Mohammad Helal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                    ],
                  ),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                     Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_outlined,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("director",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.info_outline,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("information",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.account_circle,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("teacher",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.account_box_sharp,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("student profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("about",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.developer_mode,size: 25,color: Colors.deepOrange,),),
                      TextButton(onPressed: (){}, child: Text("developer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 25,color: Colors.brown,))
                    ],
                  ),
                ],
              ),
              
            ),
          ),

          body: GridView.count(crossAxisCount: 2,

          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          padding: EdgeInsets.all(15),

          children: [
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                height: 150,
                width: 150,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      TextButton(onPressed: (){}, child: Text("Admission",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AdmissionForm()));
                      }, icon: Icon(Icons.add_to_home_screen,size: 35,color: Colors.black,),),
                    ],
                  ),
                )
              ),
            ),

            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Course",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add_comment_outlined,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Successful Student",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.trending_up_sharp,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Upcomming Course",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.touch_app_sharp,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Notice",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Running Course",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.run_circle,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Institutions",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.school,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Important Command",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.comment_rounded,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Payment Method",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.payments,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),
            Card(
              elevation: 0,
              shadowColor: Colors.black,
              color: Colors.transparent,

              child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Live Class",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.live_help,size: 35,color: Colors.black,),),
                      ],
                    ),
                  )
              ),
            ),



          ],
          )
        ),
    );

  }
}
