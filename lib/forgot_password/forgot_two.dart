import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/forgot_password/forgot_third.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../main.dart';

class forgotTwo extends StatefulWidget {
  const forgotTwo({super.key});

  @override
  State<forgotTwo> createState() => _forgotTwoState();
}

class _forgotTwoState extends State<forgotTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        elevation: width*1,
        backgroundColor: colorconst.thirdcolor,
        title: Text("Forgot password",
          style: TextStyle(
              color: colorconst.secondarycolor,
              fontWeight: FontWeight.w700,
              fontSize: width*0.06
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width*0.03),
          child: Container(
            height: height*0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    height: height*0.3,
                    width: width*0.6,
                    child: Image.asset(imageconst.protect),
                  ),
                ),
                // SizedBox(height: width*0.05,),
                Text("Code has been sent to +234111******99",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.035,
                  color: colorconst.secondarycolor
                ),
                ),
                // SizedBox(height: width*0.1,),
                Pinput(
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width:width*0.3,
                    height: width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.white
                    )
                    ),
                ),
                // SizedBox(height: width*0.15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Resend code in ",
                    style: TextStyle(
                      color: colorconst.secondarycolor,
                      fontWeight: FontWeight.w500,
                      fontSize:width*0.038
                    ),
                    ),
                    Countdown(
                        seconds: 60, build: (context,time) {
                          return Text(time.toString(),
                            style:TextStyle(
                              color: colorconst.primarycolor,
                              fontWeight: FontWeight.w500,
                              fontSize: width*0.038
                            ) ,
                          );
                        },
                    ),
                    Text(" s",
                    style: TextStyle(
                      fontSize: width*0.038,
                      fontWeight: FontWeight.w500,
                      color: colorconst.secondarycolor
                    ),
                    )
                  ],
                ),
                // SizedBox(height: width*0.43,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => forgotThree(),));
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
          ),
        ),
      ),
    );
  }
}
