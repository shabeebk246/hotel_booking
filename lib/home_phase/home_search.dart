import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/constants/image_constants.dart';
import 'package:hotel_booking/home_phase/booking&review/hotel_one.dart';

import '../main.dart';

class thirdHome extends StatefulWidget {
  const thirdHome({super.key});

  @override
  State<thirdHome> createState() => _thirdHomeState();
}

class _thirdHomeState extends State<thirdHome> {
  List view=[
    "Recommended","Popular","Trending","Trending"
  ];
  int currentIndex=0;
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
      imageconst.room1,
      imageconst.room4,
      imageconst.room5,
      imageconst.room6,
      imageconst.room7,
      imageconst.room8
  ];
  List saved=[];
  List saved1=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(width*0.03),
              child: Center(
                child: Container(
                  // height: width*0.15,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorconst.logcolor
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
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: colorconst.logcolor
                        ),
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(width*0.05),
                        child: Image.asset(imageconst.search,height: 20,),
                      )
                    ),
                  ),
                ),
              ),
            ),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Recommended  (484,579)",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize:width*0.042,
                  color: colorconst.secondarycolor
                ),
                ),
                SizedBox(width: width*0.2,),
                InkWell(
                  onTap: () {
                    list=true;
                    grid=false;
                    setState(() {

                    });
                  },
                  child: Container(
                    width: width*0.1,
                    height: width*0.1,
                    child: Icon(Icons.list_alt_outlined,size: width*0.06,
                    color: list==true ? colorconst.primarycolor : colorconst.secondarycolor,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    grid=true;
                    list=false;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.1,
                    width: width*0.1,
                    child: Icon(Icons.grid_view_outlined,size: width*0.06,
                        color: grid==true ? colorconst.primarycolor : colorconst.secondarycolor
                    ),
                  ),
                ),
              ],
            ),
            list==true ? ListView.separated(
              shrinkWrap: true,
              itemCount: items.length,
              physics: BouncingScrollPhysics(),
              scrollDirection:Axis.vertical ,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => firstHotel(),));
                      setState(() {

                      });
                    },
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
                                  if(saved.contains(index))
                                    {
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(items2[index],width: width*0.3,),
                          Text("Radisson Blu\nHotel",
                            style: TextStyle(
                                color: colorconst.secondarycolor,
                                fontSize: 17,
                                fontWeight: FontWeight.w700
                            ),
                          ),

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
                              InkWell(
                                onTap: () {
                                  if(saved1.contains(index))
                                  {
                                    saved1.remove(index);
                                  }
                                  else
                                  {
                                    saved1.add(index);
                                  }
                                  setState(() {

                                  });
                                },
                                  child: Image.asset(imageconst.bookmark,width: width*0.05,
                                    color: saved1.contains(index) ? colorconst.primarycolor : colorconst.secondarycolor,

                                  )
                              )
                            ],
                          )
                        ],
                      )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
