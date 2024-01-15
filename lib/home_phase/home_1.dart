import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/booking&review/hotel_one.dart';
import 'package:hotel_booking/home_phase/home_recentbooked.dart';
import 'package:hotel_booking/home_phase/profile/notification.dart';

import '../main.dart';

class firstHome extends StatefulWidget {
  const firstHome({super.key});

  @override
  State<firstHome> createState() => _firstHomeState();
}

class _firstHomeState extends State<firstHome> {
  List view=[
    "Recommended","Popular","Trending","Trending"
  ];
  List images=[
    {
      "image":imageconst.hotel,
      "text":"Intercontinental Hotel",
      "text1":"Lagos, Nigeria",
      "text3":"\$205 /night"
    },
    {
      "image":imageconst.hotel,
      "text":"Intercontinental Hotel",
      "text1":"Lagos, Nigeria",
      "text3":"\$205 /night"
    },
    {
      "image":imageconst.hotel,
      "text":"Intercontinental Hotel",
      "text1":"Lagos, Nigeria",
      "text3":"\$205 /night"
    }
  ];
  int currentIndex=0;
  List saved=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        leading: Image.asset(imageconst.bolu,
            alignment: Alignment.topRight
        ),
        title: Text("Bolu",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: width*0.06,
          color: colorconst.secondarycolor
        ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => notificationCheck(),));
              setState(() {

              });
            },
              child: Icon(Icons.notifications_outlined)),
          SizedBox(width: width*0.03,),
          InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => secondHome(),));
              setState(() {

              });
            },
              child: Image.asset(imageconst.bookmark,width: width*0.06,)),
          SizedBox(width: width*0.03,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:EdgeInsets.only(right: width*0.48),
              child: Text("Hello, Kezia",
              style: TextStyle(
                color: colorconst.secondarycolor,
                fontSize: 32,
                fontWeight: FontWeight.w700
              ),
              ),
            ),
            SizedBox(height: width*0.05,),
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
                      ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(width*0.05),
                      child: Image.asset(imageconst.search),
                    )
                  )
                )
              )
            ),
            // SizedBox(height: width*0.05,),
            Column(
              children: [
                Container(
                  height: width*0.2,
                  width: width*1,
                  child: ListView.separated(
                    itemCount: view.length,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index){
                        return Center(
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
                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: width*0.03,);
                  },
                )
                )
              ],
            ),
            // SizedBox(height: width*0.08,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => firstHotel(),));
                setState(() {

                });
              },
              child: Container(
                height: width*0.8,
                width: width*1,
                child: ListView.separated(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: width*0.75,
                          width: width*0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.1),
                              color: Colors.grey
                          ),
                          child: Image.asset(images[index]["image"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width*0.06,top: width*0.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(images[index]["text"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: colorconst.secondarycolor
                                ),
                              ),
                              Text(images[index]["text1"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: colorconst.secondarycolor
                                ),
                              ),
                              Text(images[index]["text3"],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: colorconst.secondarycolor
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: width*0.6,left: width*0.6),
                          child: InkWell(
                            onTap: () {
                              if(saved.contains(index)){
                                saved.remove(index);
                              }
                              else
                                {
                                  saved.add(index);
                                }
                              setState(() {

                              });
                            },
                            child: Image.asset(imageconst.bookmark,
                            width: width*0.07,
                              color: saved.contains(index) ? colorconst.primarycolor : colorconst.secondarycolor,
                            )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width*0.42,top: width*0.06),
                          child: Container(
                            height: width*0.08,
                            width: width*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.3),
                              color: colorconst.primarycolor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,
                                  color: colorconst.secondarycolor,
                                ),
                                Text("5.0",
                                  style: TextStyle(
                                      color: colorconst.secondarycolor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: width*0.03,);
                },
                ),
              ),
            ),
            // SizedBox(height: width*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Recently Booked",
                style: TextStyle(
                  color: colorconst.secondarycolor,
                  fontSize: width*0.038,
                  fontWeight: FontWeight.w600
                ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => secondHome(),));
                  },
                  child: Text("See All",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.038,
                    color: colorconst.primarycolor
                  ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

