import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/forgot_password/forgot_one.dart';
import 'package:hotel_booking/home_phase/bottom_navigationbar.dart';
import 'package:hotel_booking/home_phase/home_1.dart';

import '../main.dart';

class secondLog extends StatefulWidget {
  const secondLog({super.key});

  @override
  State<secondLog> createState() => _secondLogState();
}

class _secondLogState extends State<secondLog> {
  bool visble=true;
  bool check=false;
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
 final passwordvalidation=RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
 bool passval=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorconst.thirdcolor,
        appBar: AppBar(
          elevation: width*1,
          backgroundColor: colorconst.thirdcolor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.15,top: width*0.1),
                  child: Text("Login to your Account",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: colorconst.secondarycolor,
                        fontSize: width*0.13
                    ),
                  ),
                ),
              ),
              SizedBox(height: width*0.15,),
              Column(
                children: [
                  Container(
                    height: width*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.logcolor,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: emailcontroller,
                      style: TextStyle(
                          color: colorconst.secondarycolor
                      ),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded,
                            color: colorconst.secondarycolor,
                          ),
                          labelText:"Email",
                          labelStyle:TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width*0.04,
                              color: colorconst.secondarycolor
                          ),
                          enabledBorder:OutlineInputBorder(
                              borderSide:BorderSide(
                                  color: colorconst.logcolor
                              ),
                              borderRadius:BorderRadius.circular(width*0.03)
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: colorconst.logcolor
                              ),
                              borderRadius:BorderRadius.circular(width*0.03)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: width*0.05,),
                  Container(
                    width: width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.logcolor,
                      border: Border.all(color: passval==true ? colorconst.logout : colorconst.logcolor)
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      obscuringCharacter: "*",
                      obscureText: visble ? true : false,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordcontroller,
                      onChanged: (value) {
                        if(!passwordvalidation.hasMatch(value!))
                        {
                          passval=true;
                        }
                        else
                        {
                          passval=false;
                        }
                        setState(() {

                        });
                      },
                      style: TextStyle(
                          color: colorconst.secondarycolor
                      ),
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                visble=!visble;
                                setState(() {

                                });
                              },
                              child: Icon(visble ? Icons.visibility_off : Icons.visibility,
                              color: colorconst.secondarycolor,
                              ),
                            ),
                            labelText: "Password",
                                  labelStyle: TextStyle(
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500,
                                      color: colorconst.secondarycolor
                                  ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width*0.03),
                              borderSide: BorderSide(color: colorconst.logcolor)
                            ),
                            focusedBorder:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(width*0.03),
                                borderSide: BorderSide(color: colorconst.logcolor)
                            ),
                          ),
                      ),
                    ),
                  SizedBox(height: width*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: check,
                        side: BorderSide(
                            color: colorconst.primarycolor
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(width*0.01)),
                        activeColor: colorconst.primarycolor,
                        onChanged: (value) {
                          setState(() {
                            check=value!;
                          });
                        },
                      ),
                      Text("Remember me",
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w500,
                            fontSize: width*0.04
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: width*0.05,),
                ],
              ),
              InkWell(
                onTap: () {
                  if(
                    emailcontroller.text!=""&&
                      passwordcontroller.text!=""
                  )
                    {
                      Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => bottomNavigation(),),(route) => false) ;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submit succesfully!!!!"),backgroundColor: colorconst.logcolor));
                    }
                  else
                    {
                      emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("enter your email"),backgroundColor: colorconst.logcolor)):
                      passwordcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("enter your password"),backgroundColor: colorconst.logcolor)):
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("enter valied details"),backgroundColor: colorconst.logcolor));
                    }
                 //
                },
                child: Container(
                  height: width*0.15,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: colorconst.primarycolor
                  ),
                  child: Center(child: Text("Sign in",
                    style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.04
                    ),
                  )
                  ),
                ),
              ),
              SizedBox(height: width*0.05,),
              InkWell(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => forgotOne(),));
                },
                child: Text("Forgot the password?",
                style: TextStyle(
                  color: colorconst.primarycolor,
                  fontSize: width*0.035
                ),
                ),
              ),
              SizedBox(height: width*0.1,),
              Row(
                children: [
                  Expanded(child: Divider(color: colorconst.divider,
                    endIndent: width*0.03,
                    indent: width*0.07,
                    thickness: width*0.004,
                  )),
                  Text("or continue with",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: colorconst.secondarycolor,
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04,
                    ),
                  ),
                  Expanded(child: Divider(color: colorconst.divider,
                    endIndent: width*0.07,
                    indent: width*0.03,
                    thickness: width*0.004,
                  ))
                ],
              ),
              SizedBox(height: width*0.1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: width*0.15,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: colorconst.logcolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(imageconst.facebook,
                      ),
                    ),
                  ),
                  Container(
                    height: width*0.15,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: colorconst.logcolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(imageconst.google,
                      ),
                    ),
                  ),
                  Container(
                    height: width*0.15,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: colorconst.logcolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(imageconst.apple,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}

