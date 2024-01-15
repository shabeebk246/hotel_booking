import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/open_phase/threein_one.dart';

import '../main.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  void initState()
  {
    Future.delayed(
        Duration(
            seconds: 4
        )
    ).then((value) => Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => homePage(),)));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Container(
              height: height*1,
              width: width*1,
              //color: Colors.red,
              child: Image.asset(imageconst.background,fit: BoxFit.cover,)
          ),
          Padding(
            padding:EdgeInsets.only(top:width*1.2,left:width*0.05),
            child: Text("Welcome to",
              style:TextStyle(
                color: colorconst.secondarycolor,
                fontWeight: FontWeight.w700,
                fontSize: width*0.12
              ) ,
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: width*1.4,left: width*0.05),
            child: Text("Bolu",
            style: TextStyle(
              color: colorconst.primarycolor,
              fontWeight: FontWeight.w700,
              fontSize: width*0.25
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: width*1.8,left: width*0.05),
            child: Text("The best hotel bookings in the century to accompany your vacation",
            style: TextStyle(
              color: colorconst.secondarycolor,
              fontWeight: FontWeight.w600,
              fontSize: width*0.05
            ),
            ),
          )
        ],
      ),
    );
  }
}
