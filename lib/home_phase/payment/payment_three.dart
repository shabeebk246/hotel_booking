import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/bottom_navigationbar.dart';
import 'package:hotel_booking/home_phase/home_1.dart';
import 'package:hotel_booking/home_phase/payment/payment_two.dart';
import 'package:hotel_booking/home_phase/payment/ticket.dart';
import 'package:lottie/lottie.dart';

import '../../main.dart';

class paymentThree extends StatefulWidget {
  final String  Cardnumber;
  const paymentThree({super.key, required this.Cardnumber});

  @override
  State<paymentThree> createState() => _paymentThreeState();
}

class _paymentThreeState extends State<paymentThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Payment",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.058
        ),
        ),
      ),
      body: Padding(
        padding:EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: width*0.3,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorconst.logcolor
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left: width*0.02),
                        child: Image.asset(imageconst.room1,
                        height: width*0.25,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Intercontinental Hotel",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontSize: width*0.041,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                          Text("Lagos, Nigeria",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: width*0.034,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.star,
                                color: colorconst.star,
                                size: width*0.043,
                              ),
                              Text("5.0",
                                style: TextStyle(
                                    color: colorconst.primarycolor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width*0.034
                                ),
                              ),
                              Text(" (4,345 reviews)",
                                style: TextStyle(
                                    color: colorconst.secondarycolor,
                                    fontSize: width*0.034,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$205",
                            style: TextStyle(
                                color: colorconst.primarycolor,
                                fontSize: width*0.042,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Text("/night",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: width*0.03,
                                color: colorconst.secondarycolor
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: width*0.4,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorconst.logcolor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Check in",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w500,
                            fontSize: width*0.04
                          ),
                          ),
                          SizedBox(width: width*0.05,),
                          Text("December 16, 2024",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w700
                          ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Check out",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w500,
                            fontSize: width*0.04
                          ),
                          ),
                          SizedBox(width: width*0.05,),
                          Text("December 16, 2024",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w700,
                                fontSize: width*0.04
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Guest",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w500,
                                fontSize: width*0.04
                            ),
                          ),
                          SizedBox(width: width*0.15,),
                          Text("3",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w700,
                                fontSize: width*0.04
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: width*0.45,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: colorconst.logcolor,
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("5 Nights",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          SizedBox(width: width*0.4,),
                          Text("\$760.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width*0.04,
                            color: colorconst.secondarycolor
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Taxes & Fees (10%)",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: width*0.04,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: width*0.03,),
                          Text("\$760.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: width*0.04,
                                color: colorconst.secondarycolor
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: width*0.04,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: width*0.45,),
                          Text("\$760.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: width*0.04,
                                color: colorconst.secondarycolor
                            ),
                          )
                        ],
                      )
                    ],
                  ) ,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: width*0.15,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: colorconst.logcolor,
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(imageconst.logo,
                        height: width*0.09,
                      ),
                      SizedBox(width: width*0.02,),
                      Text(widget.Cardnumber,
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontSize: width*0.04,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(width: width*0.15,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => paymentTwo(Cardnumber: widget.Cardnumber),));
                          setState(() {

                          });
                        },
                        child: Text("Change",
                        style: TextStyle(
                          color: colorconst.primarycolor,
                          fontSize: width*0.04,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
           // SizedBox(height: width*0.16,),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(width*0.05)
                        ),
                        backgroundColor: colorconst.thirdcolor,
                        // title: Text("Payment Successfull!",
                        // style: TextStyle(
                        //   color: colorconst.primarycolor,
                        //   fontSize:width*0.05,
                        //   fontWeight:FontWeight.w700
                        // ),
                        // ),
                        content: Container(
                          height: width*1.1,
                          width: width*0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Lottie.asset(imageconst.lottie,
                              height: width*0.5,
                              ),
                              Text("Payment Successfull!",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: width*0.05,
                                color: colorconst.primarycolor
                              ),
                              ),
                              Text("Successfully made payment and",
                              style: TextStyle(
                                 color: colorconst.secondarycolor,
                                fontSize: width*0.041,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                              Text("hotel booking",
                                style: TextStyle(
                                    color: colorconst.secondarycolor,
                                    fontSize: width*0.041,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => ticketGeneration(),));
                                  });
                                },
                                child: Container(
                                  height: width*0.15,
                                  width: width*0.8,
                                  decoration: BoxDecoration(
                                    color: colorconst.primarycolor,
                                    borderRadius: BorderRadius.circular(width*0.3)
                                  ),
                                  child: Center(
                                    child: Text("View Ticket",
                                    style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width*0.036
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width*0.15,
                                  width: width*0.8,
                                  decoration: BoxDecoration(
                                      color: colorconst.containercolor,
                                      borderRadius: BorderRadius.circular(width*0.3)
                                  ),
                                  child: Center(
                                    child: Text("Cancel",
                                      style: TextStyle(
                                          color: colorconst.secondarycolor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: width*0.036
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                );
                setState(() {

                });
              },
              child: Container(
                height: width*0.15,
                width: width*0.9,
                decoration: BoxDecoration(
                  color: colorconst.primarycolor,
                  borderRadius: BorderRadius.circular(width*0.3)
                ),
                child: Center(
                  child: Text("Continue",
                  style: TextStyle(
                    color: colorconst.secondarycolor,
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.04
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
