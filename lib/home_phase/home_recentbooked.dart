import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';

import '../main.dart';

class secondHome extends StatefulWidget {
  const secondHome({super.key});

  @override
  State<secondHome> createState() => _secondHomeState();
}

class _secondHomeState extends State<secondHome> {
  bool list=true;
  bool grid=false;
  List items=[
    {
      "image":imageconst.room1,
      "text":"Intercontinental Hotel",
      "text1":"\$205",
    },
    {
     "image":imageconst.room2,
     "text":"Nevada Hotel",
      "text1":"\$107 "
    },
    {
      "image":imageconst.room3,
      "text":"Oriental Hotel",
      "text1":"\$190 "
    },
    {
      "image":imageconst.room4,
      "text":"Federal Palace Hotel",
      "text1":"\$200 "
    },
    {
      "image":imageconst.room5,
      "text":"Presidential Hotel",
      "text1":"\$160 "
    }
  ];
  List items2=[
    {
      "image":imageconst.room1,
    },
    {
      "image":imageconst.room4,
    },
    {
      "image":imageconst.room5
    },
    {
      "image":imageconst.room6
    },
    {
      "image":imageconst.room7
    },
    {
      "image":imageconst.room8
    }
  ];

  List saved=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text(list==true ? "Recently Booked" : "My Bookmark",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: width*0.055
        ),
        ),
        actions: [
          InkWell(
            onTap: () {
              list=true;
              grid=false;
              setState(() {

              });
            },
            child: Container(
              height: width*0.1,
              width: width*0.1,
              child: Icon(Icons.list_alt_outlined,size: width*0.08,
              color:list==true ? colorconst.primarycolor : colorconst.secondarycolor
              ),
            ),
          ),
          InkWell(
            onTap: () {
              list=false;
              grid=true;
              setState(() {

              });
            },
            child: Container(
              height: width*0.1,
              width: width*0.1,
               child: Icon(Icons.grid_view_outlined,size: width*0.08,
               color: grid==true ? colorconst.primarycolor : colorconst.secondarycolor
               ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: width*0.08,),
            list==true ? ListView.separated(
              shrinkWrap: true,
              itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: width*0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(items[index]["image"],width: width*0.22,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(items[index]["text"],
                              style: TextStyle(
                                  color: colorconst.secondarycolor,
                                  fontSize: width*0.04,
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(items[index]["text1"],
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
                            InkWell(
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
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
               return SizedBox(height: width*0.05,);
              },
            ):
            Padding(
              padding:  EdgeInsets.all(width*0.05),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: items2.length,
                physics: BouncingScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing:width*0.03,
                  crossAxisSpacing: width*0.03,
                  mainAxisExtent: width*0.65,
                   childAspectRatio: 1
                ),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      // height: width*0.65,
                      // width: width*0.38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorconst.logcolor
                      ),
                      child:Column(
                        children: [
                          SizedBox(height: width*0.04,),
                          Image.asset(items2[index]["image"],width: width*0.3,),
                          SizedBox(height: width*0.03,),
                          Text("Radisson Blu\nHotel",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: 17,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: width*0.03,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: colorconst.star,size:width*0.043 ,),
                              Text("5.0 ",
                                style: TextStyle(
                                    color: colorconst.primarycolor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width*0.034
                                ),
                              ),
                              Text("Lagos, Nigeria",
                                style: TextStyle(
                                    color: colorconst.secondarycolor,
                                    fontSize: width*0.034,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: width*0.03,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("\$205",
                                style: TextStyle(
                                    color: colorconst.primarycolor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: width*0.04
                                ),
                              ),
                              Text(" /night",
                                style: TextStyle(
                                    fontSize: width*0.04,
                                    fontWeight: FontWeight.w700,
                                    color: colorconst.secondarycolor
                                ),
                              ),
                              SizedBox(width: width*0.01,),
                              InkWell(
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
                                  child: Image.asset(imageconst.bookmark,width: width*0.06,
                                    color: saved.contains(index) ? colorconst.primarycolor : colorconst.secondarycolor,
                                  ))
                            ],
                          )
                        ],
                      )
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
