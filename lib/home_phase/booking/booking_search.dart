import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';

import '../../main.dart';

class bookingSearch extends StatefulWidget {
  const bookingSearch({super.key});

  @override
  State<bookingSearch> createState() => _bookingSearchState();
}

class _bookingSearchState extends State<bookingSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          children: [
          Center(
            child: Container(
            height: width*0.15,
            width: width*0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                color: colorconst.logcolor,
            ),
            child: TextFormField(
                textInputAction: TextInputAction.done,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: TextStyle(
                    color: colorconst.secondarycolor
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined,
                      color: colorconst.secondarycolor,
                    ),
                    labelText: "Search",
                    labelStyle: TextStyle(
                        color: colorconst.secondarycolor,
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.038
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: colorconst.logcolor
                        ),
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: colorconst.logcolor
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(width*0.05),
                      child: Image.asset(imageconst.search,
                        width: width*0.08,
                      ),
                    )
                )
            ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
