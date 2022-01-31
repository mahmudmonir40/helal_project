
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helal_project/HomePage/homepage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  var _formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var numberController = TextEditingController();
  var passwordController = TextEditingController();
  var re_enterpasswordController = TextEditingController();

  final databaseRef = FirebaseDatabase.instance.reference().child("Registered users data");



  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/k1.jpg"),fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Card(
                  elevation: 100,
                  color: Colors.transparent,
                  shadowColor: Colors.black,

                  child: Container(
                    height: 650,
                    width: 300,

                    child: Column(children: [

                      SizedBox(
                        height: 20,
                      ),
                      Text("Registration Here",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black),),
                      SizedBox(
                        height: 10,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 11,right: 11),
                        child: Form(
                            key: _formkey,

                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: nameController,

                                  decoration: InputDecoration(
                                      labelText: "Enter your name here",

                                  ),

                                  validator: (value){
                                    if(value!.isEmpty){
                                      return("Please enter your name first here");
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),

                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailController,

                                  decoration: InputDecoration(
                                      labelText: "Enter your Email here",
                                  ),

                                  validator: (value){
                                    if(value!.isEmpty){
                                      return("Please enter your email first here");
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),

                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: numberController,

                                  decoration: InputDecoration(
                                      labelText: "Enter your Number here",
                                  ),

                                  validator: (value){
                                    if(value!.isEmpty){
                                      return("Please enter your number first here");
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),

                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  controller: passwordController,

                                  decoration: InputDecoration(
                                      labelText: "Enter your password here",
                                  ),

                                  validator: (value){
                                    if(value!.isEmpty){
                                      return("Please enter your password first here");
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),

                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  controller: re_enterpasswordController,

                                  decoration: InputDecoration(
                                      labelText: "Re-enter password ",
                                  ),

                                  validator: (value){
                                    if(value!.isEmpty){
                                      return("Please re_enter password first here");
                                    }
                                  },
                                ),
                              ],
                            )
                        ),
                      ),
                      Spacer(),

                      RaisedButton(onPressed: (){

                        if(_formkey.currentState!.validate()){
                          
                          databaseRef.push().set({
                            
                            "name": nameController.text,
                            "email": emailController.text,
                            "number": numberController.text,
                            "password": passwordController.text,
                            "re_enter password": re_enterpasswordController.text,
                            
                          }).then((_){

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration successfull"),
                            ));
                            nameController.clear();
                            emailController.clear();
                            numberController.clear();
                            passwordController.clear();
                            re_enterpasswordController.clear();

                          }).catchError((onError){

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration failed")));
                          });
                          
                        }

                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);

                      },child: Text("continue",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,fontFamily: "book italic"),),color: Colors.teal,),

                      SizedBox(
                        height: 40,
                      ),
                    ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
