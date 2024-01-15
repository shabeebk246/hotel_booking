import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/login_phase/signin.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  void initState()
  {
    Future.delayed(
        Duration(
            seconds: 4
        )
    ).then((value) => Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) =>firstLog(),)));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: width*0.5,left: width*0.2),
            child: Container(
              height: width*0.7,
              width: width*0.6,
              child: Image.asset(imageconst.phase4)
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: width*0.25,left: width*0.25),
            child: Container(
              height: width*0.5,
              width: width*0.5,
              child: Lottie.asset(imageconst.phase5)
            ),
          )
        ],
      ),
    );
  }
}
