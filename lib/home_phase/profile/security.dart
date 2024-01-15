import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/forgot_password/forgot_third.dart';

import '../../main.dart';

class securityCheck extends StatefulWidget {
  const securityCheck({super.key});

  @override
  State<securityCheck> createState() => _securityCheckState();
}

class _securityCheckState extends State<securityCheck> {
  bool toggle=false;
  bool toggle1=true;
  bool toggle2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Security",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: width*0.058,
              color: colorconst.secondarycolor
          ),
        ),
      ),
      body: Container(
        height: width*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(width: width*0.08,),
                Text("Face ID",
                  style: TextStyle(
                      fontSize: width*0.042,
                      fontWeight: FontWeight.w500,
                      color: colorconst.secondarycolor
                  ),
                ),
                SizedBox(width: width*0.55,),
                CupertinoSwitch(
                  value: toggle,
                  onChanged: (value) {
                    toggle=value;
                    setState(() {

                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: width*0.08,),
                Text("Remember me",
                  style: TextStyle(
                      fontSize: width*0.042,
                      fontWeight: FontWeight.w500,
                      color: colorconst.secondarycolor
                  ),
                ),
                SizedBox(width: width*0.41,),
                CupertinoSwitch(
                  value: toggle1,
                  onChanged: (value) {
                    toggle1=value;
                    setState(() {

                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: width*0.08,),
                Text("Touch ID",
                  style: TextStyle(
                      fontSize: width*0.042,
                      fontWeight: FontWeight.w500,
                      color: colorconst.secondarycolor
                  ),
                ),
                SizedBox(width: width*0.52,),
                CupertinoSwitch(
                  value: toggle2,
                  onChanged: (value) {
                    toggle2=value;
                    setState(() {

                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: width*0.08,),
                Text("Google Authenticator",
                  style: TextStyle(
                      fontSize: width*0.042,
                      fontWeight: FontWeight.w500,
                      color: colorconst.secondarycolor
                  ),
                ),
                SizedBox(width: width*0.35,),
                Icon(Icons.arrow_right,
                color: colorconst.primarycolor,
                  size: width*0.08,
                )
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => forgotThree(),));
                setState(() {
                  
                });
              },
              child: Container(
                height: width*0.15,
                width: width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.3),
                    color: colorconst.containercolor
                ),
                child: Center(
                  child: Text("Change Password",
                    style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
