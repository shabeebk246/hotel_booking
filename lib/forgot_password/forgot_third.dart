import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/home_1.dart';
import 'package:hotel_booking/login_phase/log_in.dart';

import '../main.dart';

class forgotThree extends StatefulWidget {
  const forgotThree({super.key});

  @override
  State<forgotThree> createState() => _forgotThreeState();
}

class _forgotThreeState extends State<forgotThree> {
  bool emailVal=false;
  bool passval=false;
  bool check=false;
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController passwordcontroller1=TextEditingController();
  final passwordvalidation=RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  bool visible=true;
  bool visble=true;
  //final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Create New Password",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.06
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:EdgeInsets.only(right: width*0.43),
            child: Text("Create Your New Password",
            style: TextStyle(
              fontSize:width*0.038,
              fontWeight: FontWeight.w500,
              color: colorconst.secondarycolor
            ),
            ),
          ),
           SizedBox(height: width*0.05,),
          Column(
            children: [
              Container(
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color: colorconst.logcolor,
                  border: Border.all(color: emailVal==true?colorconst.logout : colorconst.logcolor)
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  obscuringCharacter: "*",
                  obscureText: visible ? true : false,
                  onChanged: (value) {
                    if(!passwordvalidation.hasMatch(value!))
                    {
                      emailVal = true;
                    }
                    else{
                      emailVal = false;

                    }
                    setState(() {

                    });
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: passwordcontroller,
                  style: TextStyle(
                      color: colorconst.secondarycolor
                  ),
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        visible=!visible;
                        setState(() {

                        });
                      },
                      child: Icon(visible ? Icons.visibility_off : Icons.visibility,
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
                  controller: passwordcontroller1,
                  onChanged: (value) {
                    if(!passwordvalidation.hasMatch(value!))
                    {
                      passval = true;
                    }
                    else{
                      passval = false;

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
                    labelText: "New Password",
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
          // SizedBox(height: width*0.03,),
          InkWell(
            onTap: () {
              if(
              passwordcontroller.text!=""&&
              passwordcontroller1.text!=""&&
              passwordcontroller.text==passwordcontroller1.text
              )
                {
                  Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => secondLog(),),
                          (route) => false);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submit succesfully!!!!"),backgroundColor: colorconst.logcolor));
                }
              else
                {
                  passwordcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("enter your password"),backgroundColor: colorconst.logcolor)):
                      passwordcontroller1.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Your Correct Password"),backgroundColor:colorconst.logcolor ,)):
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Your Correct Password"),backgroundColor: colorconst.logcolor,));
                }
            },
            child: Container(
              height: width*0.15,
              width: width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.1),
                  color: colorconst.primarycolor
              ),
              child: Center(
                child: Text("Verify",
                  style: TextStyle(
                      color: colorconst.secondarycolor,
                      fontSize: width*0.043,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
