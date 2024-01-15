import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flipcard/gesture_flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/payment/payment_two.dart';

import '../../main.dart';

class addCard extends StatefulWidget {
  const addCard({super.key});

  @override
  State<addCard> createState() => _addCardState();
}

class _addCardState extends State<addCard> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController cardcontroller=TextEditingController();
  TextEditingController datecontroller=TextEditingController();
  TextEditingController cvvcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("New Card",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.06
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureFlipCard(
                animationDuration: Duration(milliseconds: 300),
                  axis: FlipAxis.vertical,
                  frontWidget: Stack(
                    children: [
                      Container(
                        height: width*0.6,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(imageconst.atm),
                          fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(width*0.05)
                        )
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: width*0.1,left: width*0.08),
                        child: Text("Balance",
                        style: TextStyle(
                         color: colorconst.secondarycolor,
                         fontWeight: FontWeight.w400,
                         fontSize: width*0.038
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: width*0.15,left: width*0.08),
                        child: Text("\$1299.15",
                        style: TextStyle(
                          color: colorconst.secondarycolor,
                          fontSize:width*0.08,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: width*0.1,left: width*0.65),
                        child: Image.asset(imageconst.logo,
                        height: width*0.15,
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: width*0.4,left: width*0.1),
                        child: Text(namecontroller.text,
                        style: TextStyle(
                          color: colorconst.secondarycolor,
                          fontSize: width*0.044,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: width*0.46,left: width*0.47),
                        child: Text(cardcontroller.text,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.044,
                          color: colorconst.secondarycolor
                        ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: width*0.4,left: width*0.63),
                        child: Text(datecontroller.text,
                        style: TextStyle(
                          color: colorconst.secondarycolor,
                          fontSize: width*0.044,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      )
                    ],
                  ),
                  backWidget:Stack(
                    children: [
                      Container(
                        height: width*0.6,
                        width: width*0.9,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(imageconst.atm),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(width*0.05)
                          )
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: width*0.07),
                        child: Container(
                          height: width*0.15,
                          width: width*0.9,
                          color:CupertinoColors.black,
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: width*0.4,left: width*0.1),
                        child: Container(
                          height: width*0.1,
                          width: width*0.6,
                          color: colorconst.secondarycolor,
                          child: Padding(
                            padding: EdgeInsets.only(left: width*0.5),
                            child: Center(
                              child: Text(cvvcontroller.text,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.04,
                                color: CupertinoColors.black
                              ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
               ),
              Container(
                height: width*0.8,
                width: width*1,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width*0.15,
                      width: width*1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor,
                      ),
                      child: TextFormField(
                        textInputAction:TextInputAction.next,
                        controller: namecontroller,
                        onChanged: (value) {
                          setState(() {

                          });
                        },
                        style: TextStyle(
                            color: colorconst.secondarycolor
                        ),
                        decoration: InputDecoration(
                            labelText: "Full Name",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width*0.04,
                                color: colorconst.secondarycolor
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorconst.logcolor
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorconst.logcolor
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: width*0.15,
                      width: width*1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor,
                      ),
                      child: TextFormField(
                        textInputAction:TextInputAction.next,
                        keyboardType: TextInputType.number,
                        maxLength: 16,
                        onChanged: (value) {
                          setState(() {

                          });
                        },
                        controller: cardcontroller,
                        style: TextStyle(
                            color: colorconst.secondarycolor
                        ),
                        decoration: InputDecoration(
                            counterText: "",
                            labelText: "card number",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width*0.04,
                                color: colorconst.secondarycolor
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorconst.logcolor
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorconst.logcolor
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            )
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.15,
                          width: width*0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            color: colorconst.logcolor,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.datetime,
                            controller: datecontroller,
                            onChanged: (value) {
                              setState(() {

                              });
                            },
                            style: TextStyle(
                                color: colorconst.secondarycolor
                            ),
                            decoration: InputDecoration(
                                labelText: "date",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: width*0.04,
                                  color: colorconst.secondarycolor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: colorconst.logcolor
                                    ),
                                    borderRadius:BorderRadius.circular(width*0.03)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: colorconst.logcolor
                                    ),
                                    borderRadius:BorderRadius.circular(width*0.03)
                                )
                            ),
                          ),
                        ),
                        // SizedBox(width: width*0.02,),
                        Container(
                          height: width*0.15,
                          width: width*0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            color: colorconst.logcolor,
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
                            controller: cvvcontroller,
                            onChanged: (value) {
                              setState(() {

                              });
                            },
                            maxLength: 3,
                            style: TextStyle(
                                color: colorconst.secondarycolor
                            ),
                            decoration: InputDecoration(
                                counterText: "",
                                labelText: "cvv",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: width*0.04,
                                  color: colorconst.secondarycolor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: colorconst.logcolor
                                    ),
                                    borderRadius:BorderRadius.circular(width*0.03)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: colorconst.logcolor
                                    ),
                                    borderRadius:BorderRadius.circular(width*0.03)
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height:width*0.05),
              InkWell(
                onTap: () {
                  if(
                  namecontroller.text!=""&&
                  cardcontroller.text!=""&&
                  datecontroller.text!=""&&
                  cvvcontroller.text!=""
                  )
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => paymentTwo(Cardnumber: cardcontroller.text,),));
                      setState(() {

                      });
                    }
                  else
                    {
                      namecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Name"),backgroundColor: colorconst.logcolor,)):
                          cardcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Cardnumber"),backgroundColor: colorconst.logcolor)):
                              datecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Date"),backgroundColor: colorconst.logcolor)):
                                  cvvcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter the cvv Number"),backgroundColor: colorconst.logcolor)):
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Valied Details"),backgroundColor: colorconst.logcolor));
                    }

                },
                child: Container(
                  height: width*0.15,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: colorconst.primarycolor,
                      borderRadius: BorderRadius.circular(width*0.3)
                  ),
                  child: Center(
                    child: Text("Add New Card",
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
      ),
    );
  }
}
