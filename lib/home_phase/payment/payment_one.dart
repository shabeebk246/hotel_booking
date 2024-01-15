import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/payment/addnew_card.dart';
import 'package:hotel_booking/home_phase/payment/payment_three.dart';

import '../../main.dart';

class paymentOne extends StatefulWidget {
  const paymentOne({super.key});

  @override
  State<paymentOne> createState() => _paymentOneState();
}

class _paymentOneState extends State<paymentOne> {
  String cont="p";
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
          fontSize: width*0.06
        ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: width*1,
              width: width*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Methods",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.042,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => addCard(),));
                          setState(() {

                          });
                        },
                        child: Text("Add New Card",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: width*0.042,
                          color: colorconst.primarycolor
                        ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: width*0.15,
                    width: width*1,
                    decoration: BoxDecoration(
                      color: colorconst.logcolor,
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    child: ListTile(
                      leading: Image.asset(imageconst.paypal,
                      width: width*0.09,
                      ),
                      title: Text("Paypal",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.041,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      trailing:Radio(
                        activeColor: colorconst.primarycolor,
                        fillColor: MaterialStatePropertyAll(colorconst.primarycolor),
                        value: "p",
                        groupValue: cont,
                        onChanged: (value) {
                          setState(() {
                            cont=value!;
                          });
                        },
                      ) ,
                    ),
                  ),
                  Container(
                    height: width*0.15,
                    width: width*1,
                    decoration: BoxDecoration(
                      color: colorconst.logcolor,
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    child: ListTile(
                      leading: Image.asset(imageconst.google,
                      width: width*0.09,
                      ),
                      title: Text("Google Pay",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.041,
                        color: colorconst.secondarycolor
                      ),
                      ),
                      trailing: Radio(
                        activeColor: colorconst.primarycolor,
                        fillColor: MaterialStatePropertyAll(colorconst.primarycolor),
                        value: "g",
                        groupValue: cont,
                        onChanged: (value) {
                          setState(() {
                            cont=value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: width*0.15,
                    width: width*1,
                    decoration: BoxDecoration(
                      color: colorconst.logcolor,
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    child: ListTile(
                      leading: Image.asset(imageconst.apple,
                      width: width*0.09,
                      ),
                      title: Text("Apple Pay",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.041,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      trailing: Radio(
                        activeColor: colorconst.primarycolor,
                        fillColor: MaterialStatePropertyAll(colorconst.primarycolor),
                        value: "a",
                        groupValue: cont,
                        onChanged: (value) {
                          setState(() {
                            cont=value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => paymentThree(Cardnumber: '',),));
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
                    fontSize: width*0.041
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
