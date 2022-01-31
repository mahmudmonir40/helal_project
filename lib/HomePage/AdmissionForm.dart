
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_glow/flutter_glow.dart';

class AdmissionForm extends StatefulWidget {
  const AdmissionForm({Key? key}) : super(key: key);

  @override
  _AdmissionFormState createState() => _AdmissionFormState();
}

class _AdmissionFormState extends State<AdmissionForm> {


  var _formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var fatherController = TextEditingController();
  var mothernameController = TextEditingController();
  var addressController = TextEditingController();
  var emailController = TextEditingController();
  var numberController = TextEditingController();
  var passwordController = TextEditingController();
  var re_enterpasswordController = TextEditingController();


  bool radioSelected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text("Admission Form",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.teal),),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [

            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  key: _formkey,

                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: nameController,

                        decoration: InputDecoration(
                            labelText: "Enter your name ",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your name first ");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: fatherController,

                        decoration: InputDecoration(
                            labelText: "Enter your Father name",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your Father name first ");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: mothernameController,

                        decoration: InputDecoration(
                            labelText: "Enter your Mother name",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your Mother name first ");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: addressController,

                        decoration: InputDecoration(
                            labelText: "Enter your address ",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your address first ");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,

                        decoration: InputDecoration(
                            labelText: "Enter your Email ",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your Email first ");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: numberController,

                        decoration: InputDecoration(
                            labelText: "Enter your number ",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your number first");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        controller: passwordController,

                        decoration: InputDecoration(
                            labelText: "Enter your password",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your password first");
                          }
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        controller: re_enterpasswordController,

                        decoration: InputDecoration(
                            labelText: "Re-enter password ",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius
                                  .circular(20),
                                  bottomRight: Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            )
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please re_enter password first");
                          }
                        },
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: <Widget>[
                          Row(
                            children: [
                              GlowRadio(
                                value: false,
                                groupValue: radioSelected,
                                onChange: (value) {
                                  setState(() {
                                    radioSelected = false;

                                  });
                                },
                                disableColor: Colors.grey,
                                checkColor: Colors.brown,
                              ),
                              SizedBox(width: 10,),
                              Text("Male"),
                            ],
                          ),
                          SizedBox(width: 15,),

                         Row(
                           children: [
                             GlowRadio(
                               value: true,
                               groupValue: radioSelected,
                               onChange: (value) {
                                 setState(() {
                                   radioSelected = true;

                                 });
                               },
                               checkColor: Colors.brown,
                             ),
                             SizedBox(width: 10,),
                             Text("Female"),
                           ],
                         )
                        ],
                      ),



                      DropdownButtonFormField(
                          hint: Text("Enter your educational qualification"),
                          onChanged: (value) {
                            setState(() {
                              print(value);
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              child: Text("none", style: TextStyle(
                                  fontSize: 20, fontFamily: "book italic"),),
                              value: "none",),
                            DropdownMenuItem(
                              child: Text("jdc/jsc", style: TextStyle(
                                  fontSize: 20, fontFamily: "book italic"),),
                              value: "jdc/jsc",),
                            DropdownMenuItem(
                              child: Text("dhakil/ssc", style: TextStyle(
                                  fontSize: 20, fontFamily: "book italic"),),
                              value: "dhakil/ssc",),
                            DropdownMenuItem(
                              child: Text("alim/inter", style: TextStyle(
                                  fontSize: 20, fontFamily: "book italic"),),
                              value: "inter",),
                            DropdownMenuItem(
                              child: Text("fazil/honours", style: TextStyle(
                                  fontSize: 20, fontFamily: "book italic"),),
                              value: "honours",),
                            DropdownMenuItem(
                              child: Text("kamil/masturs", style: TextStyle(
                                  fontSize: 20, fontFamily: "book italic"),),
                              value: "masturs",),

                          ])

                    ],
                  )),
            ),

            RaisedButton(onPressed: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
              };
            },
              child: Text("continue", style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w300,
                  fontFamily: "book italic"),),
              color: Colors.teal,),
          ],
        ),
      ),
    );
  }

}


