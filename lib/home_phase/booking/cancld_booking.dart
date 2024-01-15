import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';

import '../../main.dart';

class bookingThree extends StatefulWidget {
  const bookingThree({super.key});

  @override
  State<bookingThree> createState() => _bookingThreeState();
}

class _bookingThreeState extends State<bookingThree> {
  int currentIndex=0;
  List view=[
    "Ongoing","Completed","Canceled"
  ];
  List image=[
    imageconst.room1,
    imageconst.room4,
    imageconst.room5
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Container(
                height:height*1,
                width: width*0.9,
                child: ListView.separated(
                  itemCount: image.length,
                  physics:NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: width*0.57,
                      width: width*0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorconst.logcolor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width*0.04,top: width*0.02),
                                child: Container(
                                  width: width*0.23,
                                  height: width*0.23,
                                  child: Image.asset(image[index]),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.only(left: width*0.05,top: width*0.03),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Intercontinental Hotel",
                                      style: TextStyle(
                                          fontSize: width*0.04,
                                          fontWeight: FontWeight.w700,
                                          color: colorconst.secondarycolor
                                      ),
                                    ),
                                    Text("Lagos, Nigeria",
                                      style: TextStyle(
                                          color: colorconst.secondarycolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: width*0.034
                                      ),
                                    ),
                                    SizedBox(height:width*0.03),
                                    InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: width*0.08,
                                        width: width*0.3,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.03),
                                            color: colorconst.cancelcont
                                        ),
                                        child: Center(
                                          child: Text("Canceled & Refunded",
                                            style: TextStyle(
                                                color: colorconst.cancel,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: width*0.04),
                            child: Divider(color: colorconst.divider,
                              thickness: width*0.004,
                              endIndent: width*0.05,
                              indent: width*0.05,
                            ),
                          ),
                          Container(
                            height: width*0.09,
                            width: width*0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.03),
                                color: colorconst.cancelcont
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(imageconst.danger,width: width*0.05,),
                                SizedBox(width: width*0.02,),
                                Text("You canceled this hotel booking",
                                  style: TextStyle(
                                      color: colorconst.cancel,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: width*0.03,);
                },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
