import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/payment/payment_one.dart';
import 'package:hotel_booking/home_phase/profile/edit_profile.dart';
import 'package:hotel_booking/home_phase/profile/notification.dart';
import 'package:hotel_booking/home_phase/profile/security.dart';
import 'package:hotel_booking/login_phase/signin.dart';
import 'package:image_picker/image_picker.dart';

import '../../main.dart';

class profileOne extends StatefulWidget {
  const profileOne({super.key});

  @override
  State<profileOne> createState() => _profileOneState();
}

class _profileOneState extends State<profileOne> {
var files;
pickimage(ImageSource)async{
  final imgFile=await
      ImagePicker.platform.pickImage(source: ImageSource);
  files=File(imgFile!.path);
  if(mounted){
    setState(() {
      files=File(imgFile.path);
    });
  }
  Navigator.pop(context);
}

  bool toggle=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        leading: Image.asset(imageconst.bolu),
        title: Text("Profile",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: width*0.058,
          color: colorconst.secondarycolor
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(
                child: Stack(
                  children: [
                   files ==null?CircleAvatar(
                      radius: width*0.15,
                      backgroundImage: AssetImage(imageconst.person),
                    ): CircleAvatar(
                     radius: width*0.15,
                     backgroundImage: FileImage(files)
                   ),
                    Padding(
                      padding:EdgeInsets.only(left: width*0.23,top: width*0.23),
                      child: InkWell(
                        onTap:() {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(width*0.05)),
                                  backgroundColor: colorconst.thirdcolor,
                                  content: Container(
                                    height: width*0.6,
                                    width: width*1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(width*0.03),
                                      color: colorconst.thirdcolor
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Choose a File From?",
                                          style: TextStyle(
                                              color: colorconst.secondarycolor,
                                              fontSize: width*0.042,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    pickimage(ImageSource.gallery);
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: width*0.1,
                                                        width: width*0.15,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(width*0.02),
                                                          color: colorconst.primarycolor
                                                        ),
                                                        child: Center(
                                                            child:Icon(
                                                              Icons.image_outlined,
                                                              color: colorconst.secondarycolor,
                                                            )
                                                        ),
                                                      ),
                                                      Text("Gallery",
                                                      style: TextStyle(
                                                        fontSize: width*0.04,
                                                        color: colorconst.secondarycolor,
                                                        fontWeight: FontWeight.w500
                                                      ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    pickimage(ImageSource.camera);
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: width*0.1,
                                                        width: width*0.15,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(width*0.02),
                                                            color: colorconst.primarycolor
                                                        ),
                                                        child: Center(
                                                            child:Icon(
                                                              Icons.camera_alt_outlined,
                                                              color: colorconst.secondarycolor,
                                                            )
                                                        ),
                                                      ),
                                                      Text("Camera",
                                                        style: TextStyle(
                                                            fontSize: width*0.04,
                                                            color: colorconst.secondarycolor,
                                                            fontWeight: FontWeight.w500
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )

                                  );
                              },
                          );
                        },
                        child: Image.asset(imageconst.profile,
                          height: width*0.08,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text("Kezia Ajibastin",
                style: TextStyle(
                    color: colorconst.secondarycolor,
                    fontSize: width*0.06,
                    fontWeight: FontWeight.w700
                ),
              ),
              Text("kezia_ajibastin@domain.com",
                style:TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.036,
                    color: colorconst.secondarycolor
                ),
              ),
            ],
          ),
          Padding(
            padding:EdgeInsets.all(width*0.04),
            child: Container(
              height: width*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => editProfile(),));
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.person_2_outlined,
                          color: colorconst.secondarycolor,
                          size: width*0.07,
                        ),
                         SizedBox(width: width*0.05,),
                        Text("Edit Profile",
                          style: TextStyle(
                              color: colorconst.secondarycolor,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.042
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => paymentOne(),));
                      setState(() {
                        
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.wallet_outlined,
                          size: width*0.07,
                          color: colorconst.secondarycolor,
                        ),
                       SizedBox(width: width*0.05,),
                        Text("Payment",
                          style: TextStyle(
                              color: colorconst.secondarycolor,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.042
                          ),
                        ),

                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => notificationCheck(),));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.notifications_outlined,
                          size: width*0.07,
                          color: colorconst.secondarycolor,
                        ),
                         SizedBox(width: width*0.05,),
                        Text("Notifications",
                          style: TextStyle(
                              color: colorconst.secondarycolor,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.042
                          ),
                        ),

                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => securityCheck(),));
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.security_outlined,
                          size: width*0.07,
                          color: colorconst.secondarycolor,
                        ),
                        SizedBox(width: width*0.05,),
                        Text("Security",
                          style: TextStyle(
                              color: colorconst.secondarycolor,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.042
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.chat,
                        size: width*0.07,
                        color: colorconst.secondarycolor,
                      ),
                      SizedBox(width: width*0.05,),
                      Text("Help",
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w600,
                            fontSize: width*0.042
                        ),
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye_outlined,
                            size: width*0.07,
                            color: colorconst.secondarycolor,
                          ),
                          SizedBox(width: width*0.05,),
                          Text("Dark Theme",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.042
                            ),
                          ),
                        ],
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
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(context: context,backgroundColor: Colors.transparent, builder: (context) {
                        return Container(
                          height: width*0.8,
                          width: width*1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(width*0.05),topLeft: Radius.circular(width*0.05)),
                            color: colorconst.thirdcolor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Logout",
                                style: TextStyle(
                                    color: colorconst.logout,
                                    fontWeight: FontWeight.w700,
                                    fontSize: width*0.053
                                ),
                              ),
                              // SizedBox(height: width*0.05,),
                              Divider(color: colorconst.divider,
                                thickness: width*0.004,
                                endIndent: width*0.05,
                                indent: width*0.05,
                              ),
                              // SizedBox(height: width*0.05,),
                              Text("Are you sure you want to Logout \nyour Account?",textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: colorconst.secondarycolor,
                                    fontSize: width*0.042,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              InkWell(
                                onTap:() {
                                  Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => firstLog(),), (route) => false);
                                  setState(() {
                                    
                                  });
                                },
                                child: Container(
                                  height: width*0.13,
                                  width: width*0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(width*0.3),
                                      color: colorconst.primarycolor
                                  ),
                                  child: Center(child: Text("Yes, Logout",
                                    style:TextStyle(
                                        color: colorconst.secondarycolor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: width*0.034
                                    ) ,
                                  )
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap:() {
                                  Navigator.pop(context);
                                  setState(() {

                                  });
                                },
                                child: Container(
                                  height: width*0.13,
                                  width: width*0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(width*0.3),
                                      color: colorconst.containercolor
                                  ),
                                  child: Center(child: Text("Cancel",
                                    style:TextStyle(
                                        color: colorconst.secondarycolor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: width*0.034
                                    ) ,
                                  )
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.logout_outlined,
                          size: width*0.07,
                          color: colorconst.logout,
                        ),
                         SizedBox(width: width*0.05,),
                        Text("Logout",
                          style: TextStyle(
                              color: colorconst.logout,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.042
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
