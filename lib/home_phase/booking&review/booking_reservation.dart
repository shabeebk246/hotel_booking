import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/payment/payment_one.dart';

import '../../main.dart';

class bookingReservation extends StatefulWidget {
  const bookingReservation({super.key});

  @override
  State<bookingReservation> createState() => _bookingReservationState();
}

class _bookingReservationState extends State<bookingReservation> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController nicknamecontroller=TextEditingController();
  TextEditingController datecontroller=TextEditingController();
  TextEditingController numbercontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  final numbervalidation=RegExp(r"[0-9]{10}");
  bool numval=false;
  List items=[
    "Mr.","Mrs.","Ms."
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Name of Reservation",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.06
        ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: SingleChildScrollView(
          child: Form(
            // key: formkey,
            child: Column(
              children: [
                Container(
                  height: width*0.09,
                  width: width*1,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          currentIndex=index;
                          setState(() {

                          });
                        },
                        child: Container(
                          height: width*0.09,
                          width: width*0.29,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.05),
                              border: Border.all(
                                  color: colorconst.primarycolor
                              ),
                            color:currentIndex==index ? colorconst.primarycolor : colorconst.thirdcolor ,
                          ),
                          child: Center(
                              child: Text(items[index],
                                style: TextStyle(
                                    color: colorconst.secondarycolor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              )
                          ),
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: width*0.03,);
                  },
                  ),
                ),
                Container(
                  height: width*1,
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
                          textInputAction: TextInputAction.next,
                          controller: nicknamecontroller,
                          style: TextStyle(
                              color: colorconst.secondarycolor
                          ),
                          decoration: InputDecoration(
                              labelText: "Nickname",
                              labelStyle: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w500,
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
                          keyboardType: TextInputType.datetime,
                          textInputAction: TextInputAction.next,
                          controller: datecontroller,
                          style: TextStyle(
                              color: colorconst.secondarycolor
                          ),
                          decoration:InputDecoration(
                              labelText:"Date of Birth",
                              labelStyle: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w500,
                                fontSize: width*0.04,
                              ),
                              suffixIcon: Icon(Icons.date_range_outlined,
                                color: colorconst.secondarycolor,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: colorconst.logcolor
                                  ),
                                  borderRadius:BorderRadius.circular(width*0.03)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: colorconst.logcolor
                                  ),
                                  borderRadius:BorderRadius.circular(width*0.03)
                              )
                          ) ,
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
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: emailcontroller,
                          style: TextStyle(
                              color: colorconst.secondarycolor
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.email_outlined,
                                color: colorconst.secondarycolor,
                              ),
                              labelText:"Email",
                              labelStyle:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: width*0.04,
                                  color: colorconst.secondarycolor
                              ),
                              enabledBorder:OutlineInputBorder(
                                  borderSide:BorderSide(
                                      color: colorconst.logcolor
                                  ),
                                  borderRadius:BorderRadius.circular(width*0.03)
                              ),
                              focusedBorder:OutlineInputBorder(
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
                          border: Border.all(color: numval==true ? colorconst.logout : colorconst.logcolor)
                        ),
                        child: TextFormField(
                          maxLength: 10,

                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.phone,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: numbercontroller,
                          onChanged: (value) {
                            if(!numbervalidation.hasMatch(value!))
                              {
                                numval = true;
                              }
                            else
                              {
                                numval = false;
                              }
                            setState(() {

                            });
                          },
                          style: TextStyle(
                              color: colorconst.secondarycolor
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                              prefixIcon:CountryCodePicker(
                                initialSelection: "IN",
                                showOnlyCountryWhenClosed:true,
                                showDropDownButton: true,
                                hideMainText: true,
                              ),
                              labelText:"Phone Number",
                              labelStyle:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: width*0.04,
                                  color: colorconst.secondarycolor
                              ),
                              enabledBorder:OutlineInputBorder(
                                  borderSide:BorderSide(
                                      color: colorconst.logcolor
                                  ),
                                  borderRadius:BorderRadius.circular(width*0.03)
                              ),
                              focusedBorder:OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: colorconst.logcolor
                                  ),
                                  borderRadius:BorderRadius.circular(width*0.03)
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               SizedBox(height: width*0.45,),
                InkWell(
                  onTap: () {
                    if(
                    namecontroller.text!=""&&
                    nicknamecontroller.text!=""&&
                    datecontroller.text!=""&&
                    emailcontroller.text!=""&&
                    numbercontroller.text!=""
                    ) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => paymentOne(),));
                      setState(() {

                      });
                      }
                    else
                      {
                        namecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your name"),backgroundColor: colorconst.logcolor,)):
                        nicknamecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your nickname"),backgroundColor: colorconst.logcolor,)):
                        datecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your Date od birth"),backgroundColor: colorconst.logcolor,)):
                        emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email"),backgroundColor: colorconst.logcolor,)):
                        numbercontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your phonenumber"),backgroundColor: colorconst.logcolor,)):
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter valied information")));
                      }

                  },
                  child: Container(
                    height: width*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.3),
                        color: colorconst.primarycolor
                    ),
                    child: Center(
                      child: Text("Continue",
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
        ),
      ),
    );
  }
}
