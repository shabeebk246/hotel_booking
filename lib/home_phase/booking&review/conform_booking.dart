import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/booking&review/booking_reservation.dart';

import '../../main.dart';

class confrmBookingOne extends StatefulWidget {
  const confrmBookingOne({super.key});

  @override
  State<confrmBookingOne> createState() => _confrmBookingOneState();
}

class _confrmBookingOneState extends State<confrmBookingOne> {
  List<DateTime?> dates=[];
  int count=1;
  int amount=0;
  @override
  Widget build(BuildContext context) {
    amount=dates.isEmpty ? 0 : dates.last!.difference(dates.first!).inDays;
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Select Date",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: width*0.055,
          color: colorconst.secondarycolor
        ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(width*0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.08),
              color: colorconst.thirdcolor
            ),
            child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range,
                  selectedDayTextStyle: TextStyle(
                    color: colorconst.secondarycolor,
                    fontWeight: FontWeight.w400,
                    fontSize:width*0.036
                  ),
                  selectedDayHighlightColor: colorconst.primarycolor,
                  centerAlignModePicker: true,
                  customModePickerIcon: SizedBox(),
                  currentDate: DateTime(DateTime.january),
                  firstDayOfWeek: 1,
                  controlsTextStyle: TextStyle(
                    fontSize: width*0.044,
                    fontWeight: FontWeight.w700,
                    color: colorconst.secondarycolor,
                  ),
                  dayTextStyle: TextStyle(
                    color: colorconst.secondarycolor,
                    fontWeight: FontWeight.w400
                  ),
                  weekdayLabelTextStyle: TextStyle(
                    color: colorconst.secondarycolor,
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.036
                  )
                ),
                value:dates,
              onValueChanged: (value) {
                dates=value;
                setState(() {

                });
              },
            ),
          ),
          SizedBox(height: width*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Check in",
                  style: TextStyle(
                    color: colorconst.secondarycolor,
                    fontWeight: FontWeight.w700,
                    fontSize: width*0.042
                  ),
                  ),
                  SizedBox(height:width*0.03),
                  Container(
                    height: width*0.1,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.logcolor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(dates.isEmpty ? "" : dates[0].toString().substring(5,10),
                        style: TextStyle(
                          color: colorconst.secondarycolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        SizedBox(width: width*0.03,),
                        Icon(Icons.calendar_month_outlined,
                        color: colorconst.secondarycolor,
                          size: width*0.05,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(width: width*0.02,),
              Padding(
                padding: EdgeInsets.only(top: width*0.08),
                child: Icon(Icons.arrow_right,
                color: colorconst.secondarycolor,
                ),
              ),
              SizedBox(width: width*0.02,),
              Column(
                children: [
                  Text("Check out",
                  style: TextStyle(
                    color: colorconst.secondarycolor,
                      fontWeight: FontWeight.w700,
                      fontSize: width*0.042
                  ),
                  ),
                  SizedBox(height:width*0.03),
                  Container(
                    height: width*0.1,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(dates.length==1||dates.isEmpty ? '' : dates[1].toString().substring(5,10),
                          style: TextStyle(
                              color: colorconst.secondarycolor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(width: width*0.03,),
                        Icon(Icons.calendar_month_outlined,
                          color: colorconst.secondarycolor,
                          size: width*0.05,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: width*0.06,),
          Padding(
            padding:EdgeInsets.only(right: width*0.8),
            child: Text("Guest",
            style: TextStyle(
              color: colorconst.secondarycolor,
              fontWeight: FontWeight.w700,
              fontSize: width*0.042
            ),
            ),
          ),
          SizedBox(height: width*0.03,),
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
                InkWell(
                  onTap:() {
                    count++;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: width*0.12,
                    width: width*0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.containercolor
                    ),
                    child:Center(
                      child: Icon(Icons.add,
                      color: colorconst.secondarycolor,
                      ),
                    ) ,
                  ),
                ),
                SizedBox(width: width*0.1,),
                Text(count.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: width*0.048,
                      color: colorconst.secondarycolor
                  ),
                ),
                SizedBox(width: width*0.1,),
                InkWell(
                  onTap:() {
                    count<=1 ? 1 : count--;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.12,
                    width: width*0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.containercolor
                    ),
                    child:Center(
                      child: Icon(Icons.remove,
                        color: colorconst.secondarycolor,
                      ),
                    ) ,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: width*0.04,),
          Center(
            child: Text("Total: \$${525*amount*count}",
            style: TextStyle(
              color: colorconst.secondarycolor,
              fontWeight: FontWeight.w700,
              fontSize: width*0.042
            ),
            )
          ),
          SizedBox(height: width*0.06,),
          InkWell(
            onTap: () {
              if(dates.isNotEmpty)
              {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => bookingReservation(),));
              }
              else
                {
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Select the date"),backgroundColor: colorconst.logcolor,));
                }
            },
            // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => bookingReservation( ),)),
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
    );
  }
}
