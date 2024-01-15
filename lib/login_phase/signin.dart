import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/login_phase/log_in.dart';
import 'package:hotel_booking/login_phase/signin_one.dart';

import '../main.dart';

class firstLog extends StatefulWidget {
  const firstLog({super.key});

  @override
  State<firstLog> createState() => _firstLogState();
}

class _firstLogState extends State<firstLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        elevation: width*1,
        backgroundColor: colorconst.thirdcolor,
      ),
      body: Column(
        children: [
          SizedBox(height: width*0.2,),
          Center(
            child: Text("Let’s you in",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: colorconst.secondarycolor,
              fontSize: width*0.13
            ),
            ),
          ),
          SizedBox(height: width*0.2,),
          Column(
            children: [
              Container(
                height: width*0.15,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                    color: colorconst.logcolor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Image.asset(imageconst.facebook,
                   height: width*0.1,
                   ),
                    Text("Continue with Facebook",
                    style: TextStyle(
                      color: colorconst.secondarycolor,
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04
                    ),
                    ),
                    SizedBox(width: width*0.05,)
                  ],
                ),
              ),
              SizedBox(height: width*0.06,),
              Container(
                height: width*0.15,
                width: width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorconst.logcolor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(imageconst.google,
                    width: width*0.1,
                    ),
                    Text("Continue with Google",
                    style: TextStyle(
                      fontSize: width*0.04,
                      color: colorconst.secondarycolor,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    SizedBox(width: width*0.05,)
                  ],
                ),
              ),
              SizedBox(height: width*0.06,),
              Container(
                height: width*0.15,
                width: width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorconst.logcolor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(imageconst.apple,
                    width: width*0.09,
                    ),
                    Text("Continue with Apple",
                      style: TextStyle(
                          fontSize: width*0.04,
                          color: colorconst.secondarycolor,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: width*0.06,),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height:width*0.15),
          Row(
            children: [
              Expanded(child: Divider(color: colorconst.divider,
                endIndent: width*0.03,
                indent: width*0.07,
                thickness: width*0.004,
              )),
              Text("or",
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
          InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => secondLog(),));
            },
            child: Container(
              height: width*0.15,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.1),
                color: colorconst.primarycolor
              ),
              child: Center(child: Text("Sign in with password",
                style: TextStyle(
                  color: colorconst.secondarycolor,
                  fontWeight: FontWeight.w600,
                  fontSize: width*0.04
                ),
              )
              ),
            ),
          ),
          SizedBox(height: width*0.15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an account?",
              style: TextStyle(
                color: colorconst.secondarycolor,
                fontWeight: FontWeight.w700,
              ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => firstSignup(),));
                },
                child: Text(" Sign up",
                style: TextStyle(
                  color: colorconst.primarycolor,
                  fontWeight: FontWeight.w700
                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
