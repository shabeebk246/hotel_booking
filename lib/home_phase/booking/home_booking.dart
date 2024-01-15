import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/booking/booking_search.dart';
import 'package:hotel_booking/home_phase/booking/cancld_booking.dart';
import 'package:hotel_booking/home_phase/booking/cmplt_booking.dart';
import 'package:hotel_booking/home_phase/bottom_navigationbar.dart';
import 'package:hotel_booking/home_phase/home_1.dart';
import 'package:hotel_booking/home_phase/payment/ticket.dart';

import '../../main.dart';

class bookingOne extends StatefulWidget {
  const bookingOne({super.key});

  @override
  State<bookingOne> createState() => _bookingOneState();
}

class _bookingOneState extends State<bookingOne> {
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
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,

        leading: Image.asset(imageconst.bolu,
        alignment: Alignment.topRight,
        ),
        title: Text("My Booking",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontSize: width*0.058,
          fontWeight: FontWeight.w700
        ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => bookingSearch(),));
              setState(() {

              });
            },
            child: Icon(Icons.search_rounded,
            size:width*0.08
              ),
          ),
          SizedBox(width: width*0.05,)
        ],
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            print(details.primaryVelocity);

            if(details.primaryVelocity!>0){
              if(currentIndex>0){
                currentIndex--;

              }
              // currentIndex++;
            }
            else{
              if(currentIndex<2){
                currentIndex++;

              }
            }
            setState(() {

            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(width*0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(view.length, (index) {
                  return  Center(
                      child: InkWell(
                        onTap: () {
                          currentIndex=index;
                          setState(() {

                          });
                        },
                        child: Container(
                          height: width*0.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.3),
                              border: Border.all(width: width*0.003,
                                  color: colorconst.primarycolor
                              ),
                              color: currentIndex==index ? colorconst.primarycolor : colorconst.thirdcolor
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left:width*0.04 ,right:width*0.04 ),
                              child: Text(view[index],
                                style: TextStyle(
                                    color: currentIndex==index ? colorconst.secondarycolor :colorconst.primarycolor
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );

                  }),
                  // children: [
                  //   Container(
                  //       height: width*0.2,
                  //       width: width*1,
                  //       child: ListView.separated(
                  //         itemCount: view.length,
                  //         physics: BouncingScrollPhysics(),
                  //         scrollDirection: Axis.horizontal,
                  //         itemBuilder: (BuildContext context, int index){
                  //           return
                  //             Center(
                  //             child: InkWell(
                  //               onTap: () {
                  //                 currentIndex=index;
                  //                 setState(() {
                  //
                  //                 });
                  //               },
                  //               child: Container(
                  //                 height: width*0.09,
                  //                 decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(width*0.3),
                  //                     border: Border.all(width: width*0.003,
                  //                         color: colorconst.primarycolor
                  //                     ),
                  //                     color: currentIndex==index ? colorconst.primarycolor : colorconst.thirdcolor
                  //                 ),
                  //                 child: Center(
                  //                   child: Padding(
                  //                     padding: EdgeInsets.only(left:width*0.04 ,right:width*0.04 ),
                  //                     child: Text(view[index],
                  //                       style: TextStyle(
                  //                           color: currentIndex==index ? colorconst.secondarycolor :colorconst.primarycolor
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         }, separatorBuilder: (BuildContext context, int index) {
                  //         return SizedBox(width: width*0.03,);
                  //       },
                  //       )
                  //   )
                  // ],
                ),
              ),
            Container(
              height: height*0.8,
              width: width*0.9,
              child:  currentIndex==0?
              Container(
                height:height*1,
                width: width,
                child: ListView.separated(
                  itemCount: image.length,
                  physics:BouncingScrollPhysics(),
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
                                        width: width*0.2,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.03),
                                            color: colorconst.containercolor
                                        ),
                                        child: Center(
                                          child: Text("Paid",
                                            style: TextStyle(
                                                color: colorconst.secondarycolor,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap:() {

                                    setState(() {

                                    });
                                  },

                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) {
                                          return Container(
                                            height: width*0.8,
                                            width: width*1,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(width*0.05),
                                              color: colorconst.thirdcolor,
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("Cancel Booking",
                                                  style: TextStyle(
                                                      color: colorconst.cancel,
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
                                                Column(
                                                  children: [
                                                    Text("Are you sure you want to cancel your ",
                                                      style: TextStyle(
                                                          color: colorconst.secondarycolor,
                                                          fontSize: width*0.042,
                                                          fontWeight: FontWeight.w600
                                                      ),
                                                    ),
                                                    Text("hotel bookings?",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: width*0.042,
                                                          color: colorconst.secondarycolor
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Text("Only 80% of the money you can refund from your payment ",
                                                      style: TextStyle(
                                                          color: colorconst.secondarycolor,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12
                                                      ),
                                                    ),
                                                    Text("according to our policy",
                                                      style: TextStyle(
                                                          color: colorconst.secondarycolor,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                      onTap:() {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: width*0.09,
                                                        width: width*0.3,
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
                                                    ),
                                                    InkWell(
                                                      onTap:() {
                                                        showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return AlertDialog(
                                                                title: Text("Successfully Canceld and Refunded Your Amount",
                                                                style: TextStyle(
                                                                  color: colorconst.secondarycolor,
                                                                  fontWeight: FontWeight.w600,
                                                                  fontSize: width*0.045
                                                                ),
                                                                ),
                                                                content: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    InkWell(
                                                                      onTap: () {
                                                                        Navigator.push(context, CupertinoPageRoute(builder: (context) => bottomNavigation(),));
                                                                        setState(() {


                                                                        });
                                                                      },
                                                                      child: Container(
                                                                        height: width*0.08,
                                                                        width: width*0.2,
                                                                        decoration: BoxDecoration(
                                                                           borderRadius: BorderRadius.circular(width*0.03),
                                                                          color: colorconst.containercolor
                                                                        ),
                                                                        child: Center(
                                                                          child: Text("Ok",
                                                                          style: TextStyle(
                                                                            fontSize: width*0.04,
                                                                            fontWeight: FontWeight.w600,
                                                                            color: colorconst.secondarycolor
                                                                          ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(width*0.05)),
                                                                backgroundColor: colorconst.thirdcolor,
                                                              );
                                                            },
                                                        );
                                                      },
                                                      child: Container(
                                                        height: width*0.09,
                                                        width: width*0.3,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(width*0.3),
                                                            color: colorconst.primarycolor
                                                        ),
                                                        child: Center(child: Text("Yes, Continue",
                                                          style:TextStyle(
                                                              color: colorconst.secondarycolor,
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: width*0.034
                                                          ) ,
                                                        )
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: width*0.09,
                                      width: width*0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(width*0.3),
                                        border: Border.all(
                                            color: colorconst.primarycolor
                                        ),
                                      ),
                                      child: Center(child: Text("Cancel Booking",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: colorconst.primarycolor
                                        ),
                                      )
                                      ),
                                    ),
                                  )
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, CupertinoPageRoute(builder: (context) => ticketGeneration(),));
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    height: width*0.09,
                                    width: width*0.3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(width*0.3),
                                        border: Border.all(
                                            color: colorconst.primarycolor
                                        ),
                                        color: colorconst.primarycolor
                                    ),
                                    child: Center(child: Text("View Ticket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: colorconst.secondarycolor
                                      ),
                                    )
                                    ),
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: width*0.03,);
                },
                ),
              ):
              currentIndex==1?bookingTwo():bookingThree(),
            )


            ],
          ),
        ),
      ),
    );
  }
}
