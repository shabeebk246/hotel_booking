import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/forgot_password/forgot_two.dart';

import '../main.dart';

class forgotOne extends StatefulWidget {
  const forgotOne({super.key});

  @override
  State<forgotOne> createState() => _forgotOneState();
}

class _forgotOneState extends State<forgotOne> {
  bool toggle=false;
  bool toggle1=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Forgot password",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.06
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: height*0.25,
              width: width*0.6,
              child: Image.asset(imageconst.lock)
            ),
          ),
          // SizedBox(height: width*0.08,),
          Text("Select which contact details should we use to reset\nyour password",
          style: TextStyle(
            color: colorconst.secondarycolor,
            fontSize:width*0.036,
            fontWeight:FontWeight.w500 ,
          ),
          ),
          // SizedBox(height: width*0.08,),
          InkWell(
            onTap: () {
              toggle=true;
              toggle1=false;
              setState(() {

              });
            },
            child: Container(
              height: width*0.3,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                border: Border.all(width: toggle?width*0.007:width*0.001,
                color:colorconst.primarycolor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: colorconst.logcolor,
                    radius: 40,
                    child: Icon(Icons.message_rounded,
                    color: colorconst.primarycolor,
                      size: width*0.08,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: width*0.05,),
                      Text("via SMS:",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.04
                      ),
                      ),
                      SizedBox(height: width*0.05,),
                      Text(" +234111******99",
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: width*0.1,)
                ],
              ),
            ),
          ),
          // SizedBox(height:width*0.05),
          InkWell(
            onTap:() {
              toggle=false;
              toggle1=true;
              setState(() {

              });
            },
            child: Container(
              height: width*0.3,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                border: Border.all(width:toggle1? width*0.007:width*0.001,
                    color: colorconst.primarycolor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: colorconst.logcolor,
                    radius: 40,
                    child: Icon(Icons.email_rounded,
                      color: colorconst.primarycolor,
                      size: width*0.08,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: width*0.05,),
                      Text("via Email:",
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                          fontSize: width*0.04,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: width*0.05,),
                      Text("kez***9@your domain.com",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: width*0.16,),
          InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => forgotTwo(),));
            },
            child: Container(
              height: width*0.15,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.1),
                color: colorconst.primarycolor
              ),
              child: Center(
                child: Text("Continue",
                style: TextStyle(
                  color: colorconst.secondarycolor,
                  fontSize: width*0.042,
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
