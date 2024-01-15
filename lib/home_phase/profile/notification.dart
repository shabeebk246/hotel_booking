import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/profile/profile_one.dart';

import '../../main.dart';

class notificationCheck extends StatefulWidget {
  const notificationCheck({super.key});

  @override
  State<notificationCheck> createState() => _notificationCheckState();
}

class _notificationCheckState extends State<notificationCheck> {
  bool toggle=true;
  bool toggle1=true;
  bool toggle2=false;
  bool toggle3=true;
  bool toggle4=false;
  bool toggle5=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Notification",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.058
        ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Container(
          height: width*1.7,
          width: width*1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: width*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("General Notification",
                        style: TextStyle(
                          fontSize: width*0.042,
                          fontWeight: FontWeight.w500,
                          color: colorconst.secondarycolor
                        ),
                        ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sound",
                          style: TextStyle(
                              fontSize: width*0.042,
                              fontWeight: FontWeight.w500,
                              color: colorconst.secondarycolor
                          ),
                        ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Vibrate",
                          style: TextStyle(
                              fontSize: width*0.042,
                              fontWeight: FontWeight.w500,
                              color: colorconst.secondarycolor
                          ),
                        ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("App Updates",
                          style: TextStyle(
                              fontSize: width*0.042,
                              fontWeight: FontWeight.w500,
                              color: colorconst.secondarycolor
                          ),
                        ),
                        CupertinoSwitch(
                          value: toggle3,
                          onChanged: (value) {
                            toggle3=value;
                            setState(() {

                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Service Available",
                          style: TextStyle(
                              fontSize: width*0.042,
                              fontWeight: FontWeight.w500,
                              color: colorconst.secondarycolor
                          ),
                        ),
                        CupertinoSwitch(
                          value: toggle4,
                          onChanged: (value) {
                            toggle4=value;
                            setState(() {

                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New tips available",
                          style: TextStyle(
                              fontSize: width*0.042,
                              fontWeight: FontWeight.w500,
                              color: colorconst.secondarycolor
                          ),
                        ),
                        CupertinoSwitch(
                          value: toggle5,
                          onChanged: (value) {
                            toggle5=value;
                            setState(() {

                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(height: width*0.77,),
              InkWell(
                onTap: () {
                  Navigator.push(context,CupertinoPageRoute(builder: (context) => profileOne(),));
                },
                child: Container(
                  height: width*0.15,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.3),
                      color: colorconst.primarycolor
                  ),
                  child: Center(
                    child: Text("Update",
                      style: TextStyle(
                          color: colorconst.secondarycolor,
                          fontSize: width*0.04,
                          fontWeight: FontWeight.w600
                      ),
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
