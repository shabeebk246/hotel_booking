import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/booking&review/conform_booking.dart';
import 'package:hotel_booking/home_phase/bottom_navigationbar.dart';
import 'package:readmore/readmore.dart';

import '../../main.dart';

class firstHotel extends StatefulWidget {
  const firstHotel({super.key});

  @override
  State<firstHotel> createState() => _firstHotelState();
}

class _firstHotelState extends State<firstHotel> {
  List images1=[
    imageconst.place1,
    imageconst.place2,
    imageconst.place3,
    imageconst.place1,
    imageconst.place2,
    imageconst.place3,
    imageconst.place1,
    imageconst.place2,
    imageconst.place3
  ];
  List review=[
    {
      "image":imageconst.person1,
      "text":"Ivande Othawa",
      "text1":"Jan 20, 2025",
      "text2":"Very nice and comfortable hotel, thank you for\naccompanying my vacation!"
    },
    {
      "image":imageconst.person2,
      "text":"Nonso Davies",
      "text1":"Jan 20, 2025",
      "text2":"The rooms are very elegant and the natural views\nare amazing can’t wait to come back again"
    },
    {
      "image":imageconst.person3,
      "text":"Peter Shege",
      "text1":"Jan 09, 2025",
      "text2":"Very nice hotel, my friends and I are very satisfied\nwith the service!"
    },
    {
      "image":imageconst.person2,
      "text":"Nonso Davies",
      "text1":"Jan 20, 2025",
      "text2":"The rooms are very elegant and the natural views\nare amazing can’t wait to come back again"
    },
    {
      "image":imageconst.person1,
      "text":"Ivande Othawa",
      "text1":"Jan 20, 2025",
      "text2":"Very nice and comfortable hotel, thank you for\naccompanying my vacation!"
    },
    {
      "image":imageconst.person3,
      "text":"Peter Shege",
      "text1":"Jan 09, 2025",
      "text2":"Very nice hotel, my friends and I are very satisfied\nwith the service!"
    },
  ];

  bool tap=false;
  bool touch=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        elevation: width*1,
        backgroundColor: colorconst.thirdcolor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: width*0.2,
        width: width*1,
        color: colorconst.thirdcolor,
        child: Column(
          children: [
          Divider(
          color: colorconst.divider,
          indent: width*0.04,
          endIndent:width*0.04,
          thickness: width*0.004,
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$205 ",
                style: TextStyle(
                  color: colorconst.primarycolor,
                  fontSize: width*0.046,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text("/night",
                style: TextStyle(
                  color: colorconst.secondarycolor,
                  fontWeight: FontWeight.w700,
                  fontSize: width*0.034
                ),
                ),
                SizedBox(width: width*0.3,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => confrmBookingOne(),));
                  },
                  child: Container(
                    height: width*0.12,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.3),
                      color: colorconst.primarycolor
                    ),
                    child: Center(
                        child:Text("Book Now!",
                        style: TextStyle(
                          color: colorconst.secondarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.042
                        ),
                        )
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              height: width*0.8,
              width: width*1,
              child: Image.asset(imageconst.room44,
                  fit:BoxFit.cover
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Presidential Hotel",
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w700,
                    color: colorconst.secondarycolor
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,
                        color:colorconst.primarycolor ,
                      size: width*0.05,
                      ),
                      Text("12 Eze Adele Road Rumuomasi Lagos Nigeria",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontWeight: FontWeight.w500,
                        fontSize: width*0.034
                      ),
                      )
                    ],
                  ),
                  Divider(
                    color: colorconst.divider,
                    indent: width*0.02,
                    endIndent:width*0.06,
                    thickness: width*0.004,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gallery Photos",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.046,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          tap=!tap;
                          setState(() {

                          });
                        },
                        child: Text(tap==true?"See Less":"See All",
                        style: TextStyle(
                          color: colorconst.primarycolor,
                          fontWeight: FontWeight.w700,
                          fontSize: width*0.046
                        ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height:tap==true? width*1:width*0.3,
                        width: width*0.94,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: tap==true?images1.length:3,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              mainAxisSpacing: width*0.03,
                              crossAxisSpacing: width*0.03,
                              childAspectRatio: 1,
                            ),
                            itemBuilder:(context, index) {
                              return Container(
                                height: width*0.28,
                                width: width*0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(width*0.03),
                                  image: DecorationImage(image: AssetImage(images1[index]),
                                  fit: BoxFit.cover
                                  )
                                ),
                              );
                            },
                        ),
                      )
                      // Container(
                      //   height: width*0.3,
                      //   width: width*1,
                      //   child: ListView.separated(
                      //     itemCount:images1.length,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return  Container(
                      //         height: width*0.28,
                      //         width: width*0.35,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(width*0.03),
                      //         ),
                      //         child: Image.asset(images1[index],
                      //            fit: BoxFit.cover,
                      //         ),
                      //       );
                      //     }, separatorBuilder: (BuildContext context, int index) {
                      //       return SizedBox(width: width*0.03,);
                      //   },
                      //   ),
                      // )
                    ],
                  ),
                  Text("Details",
                  style: TextStyle(
                    color: colorconst.secondarycolor,
                    fontSize:width*0.05,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.location_city_outlined,
                          color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Hotels",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w300,
                            fontSize: width*0.032
                          ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.local_hotel_outlined,
                          color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("4 Bedrooms",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.bathtub_outlined,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("2 Bathrooms",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.square_foot_outlined,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("3000 sqft",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text("Description",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.05,
                    color: colorconst.secondarycolor
                  ),
                  ),
                  Center(
                    child: ReadMoreText("Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua.Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do eiusmod tempor\nincididunt aliqua.",
                      style: TextStyle(
                         color: colorconst.secondarycolor,
                         fontWeight: FontWeight.w600,
                         fontSize: 14
                     ),
                    trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read more...",
                      trimExpandedText: "Read less...",
                      moreStyle: TextStyle(
                        color: colorconst.primarycolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                      ),
                      lessStyle: TextStyle(
                          color: colorconst.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
                    ),
                  ),
                  Text("Facilities",
                  style: TextStyle(
                    color: colorconst.secondarycolor,
                    fontWeight: FontWeight.w700,
                    fontSize:width*0.05
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.pool_outlined,
                          color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Swimming Pool",
                          style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontSize: width*0.032,
                            fontWeight: FontWeight.w300
                          ),
                          ),
                          SizedBox(height: width*0.03,),
                          Icon(Icons.meeting_room,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Meeting Room",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )

                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.wifi,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("WiFi",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: width*0.032,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                          SizedBox(height: width*0.03,),
                          Icon(Icons.elevator_outlined,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Elevator",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.restaurant_menu_outlined,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Restaurant",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: width*0.032,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                          SizedBox(height: width*0.03,),
                          Icon(Icons.fitness_center_outlined,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Fitness Center",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.local_parking_outlined,
                            color: colorconst.primarycolor,
                            size: width*0.08,
                          ),
                          Text("Parking",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: width*0.032,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                          SizedBox(height: width*0.03,),
                          Image.asset(imageconst.hour,width: width*0.08),
                          Text("Fitness Center",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontWeight: FontWeight.w300,
                                fontSize: width*0.032
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text("Location",
                  style: TextStyle(
                    color: colorconst.secondarycolor,
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Image.asset(imageconst.map),
                  Row(
                    children: [
                      SizedBox(width: width*0.07,),
                      Text("Review",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.046,
                        color: colorconst.secondarycolor
                      ),
                      ),
                      SizedBox(width: width*0.03,),
                      Icon(Icons.star,
                      color: colorconst.star,
                      ),
                      SizedBox(width:width*0.02),
                      Text("5.0",
                      style: TextStyle(
                        color: colorconst.primarycolor,
                        fontSize: width*0.032,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      Text(" (4,345 reviews)",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.032
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height:touch==true ? width*2.6 : width*1.3,
                  width: width*0.9,
                  child: ListView.separated(
                    itemCount: touch==true ? review.length : 3,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return  Container(
                        height: width*0.4,
                        width: width*0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            color: colorconst.logcolor
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width*0.05,top:width*0.06),
                                  child: CircleAvatar(
                                    radius: width*0.08,
                                    backgroundImage: AssetImage(review[index]["image"]),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: width*0.13,),
                                    Padding(
                                      padding:EdgeInsets.only(left: width*0.03),
                                      child: Text(review[index]["text"],
                                        style: TextStyle(
                                            color: colorconst.secondarycolor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: width*0.042
                                        ),
                                      ),
                                    ),
                                    Text(review[index]["text1"],
                                      style: TextStyle(
                                          color: colorconst.secondarycolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: width*0.036
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: width*0.09,
                                  width: width*0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(width*0.03),
                                      color: colorconst.primarycolor
                                  ),
                                  margin: EdgeInsets.only(top:width*0.03,left: width*0.15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,color: colorconst.secondarycolor,size: width*0.05,),
                                      SizedBox(width: width*0.02,),
                                      Text("5.0",
                                        style: TextStyle(
                                            color: colorconst.secondarycolor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: width*0.036
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: width*0.05,),
                            Text(review[index]["text2"],
                              style: TextStyle(
                                  color: colorconst.secondarycolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: width*0.034
                              ),
                            )
                          ],
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: width*0.03,);
                  },
                  ),
                ),
                InkWell(
                  onTap: () {
                    touch=!touch;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                        color: colorconst.containercolor,
                        borderRadius: BorderRadius.circular(width*0.3)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(touch==true ?  "Less":"More",
                          style: TextStyle(
                              color: colorconst.secondarycolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Icon(touch==true ?Icons.arrow_drop_up:Icons.arrow_drop_down ,
                          color: colorconst.secondarycolor,
                          size: width*0.08,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
             SizedBox(height: width*0.2,)
          ],
        ),
      ),
    );
  }
}
