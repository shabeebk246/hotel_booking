import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/bottom_navigationbar.dart';
import 'package:hotel_booking/home_phase/home_1.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../main.dart';

class ticketGeneration extends StatefulWidget {
  const ticketGeneration({super.key});

  @override
  State<ticketGeneration> createState() => _ticketGenerationState();
}

class _ticketGenerationState extends State<ticketGeneration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,CupertinoPageRoute(builder: (context) => bottomNavigation(),), (route) => false);
          },
            child: Icon(Icons.arrow_back)),
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Ticket",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontSize: 24,
          fontWeight: FontWeight.w700
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  height: width*1.5,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: colorconst.logcolor,
                      borderRadius: BorderRadius.circular(width*0.03),
                    border: Border.all(color: Colors.white)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Intercontinental Hotel",
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),
                      ),
                      QrImageView(
                        data: 'https://instagram.com/sha_beeb_03?utm_source=qr&igshid=OGIxMTE0OTdkZA==',
                        size: width*0.5,
                        // backgroundColor: colorconst.secondarycolor,
                        eyeStyle: QrEyeStyle(
                            color: colorconst.secondarycolor,
                            eyeShape: QrEyeShape.square
                        ),
                        dataModuleStyle: QrDataModuleStyle(
                            color: colorconst.secondarycolor,
                            dataModuleShape: QrDataModuleShape.square
                        ),
                      ),
                      SizedBox(height: width*0.05,),
                      Container(
                        height: width*0.5,
                        width: width*0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text("Kezia Williams",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.036,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: width*0.05,),
                                Text("Check in",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text("Dec 16, 2024",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.036,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: width*0.05,),
                                Text("Hotel",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text("Intercontinental Hotel",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.036,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Phone Number",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text("+234 702 2347 642",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.035,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: width*0.05,),
                                Text("Check out",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text("Dec 16, 2024",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.035,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: width*0.05,),
                                Text("Guest",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text("3",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontSize: width*0.035,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                Positioned(
                  top: width*0.74,
                  right:width*0.85 ,
                  child:Container(
                    height: width*0.1,
                    width: width*0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorconst.thirdcolor,
                      border: Border.all(color: colorconst.secondarycolor)
                    ),
                  ),
                ),
                Positioned(
                  top: width*0.74,
                    left:width*0.85,
                    child: Container(
                      height: width*0.1,
                      width: width*0.1,
                      decoration: BoxDecoration(
                        color: colorconst.thirdcolor,
                        shape: BoxShape.circle,
                        border: Border.all(color: colorconst.secondarycolor)
                      ),
                    )
                ),
                Positioned(
                  top: width*0.79,
                  left: width*0.06,
                  child: DottedLine(
                    lineLength: width*0.78,
                    dashGapLength: width*0.01,
                    dashColor: colorconst.secondarycolor,
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
