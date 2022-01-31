
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:helal_project/HomePage/homepage.dart';
import 'package:helal_project/RegistrationPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>RegistrationPage()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Spacer(),

            Container(
              height: 130,
              width: 130,
              child: Center(child: Text("PCTI",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w300,fontFamily: "Bushetch",color: Colors.black),)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                color: Colors.teal
                ),
            ),
            Spacer(),

            SpinKitSpinningLines(color: Colors.teal,size: 75,),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
