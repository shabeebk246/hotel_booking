import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/open_phase/on_boarding.dart';
import 'package:hotel_booking/open_phase/second_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../main.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentindex=0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      body: Column(
        children: [
          Container(
            height: height*0.77,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                currentindex=value;
                setState(() {

                });
              },
              itemCount: Content.length,
                itemBuilder: (context, index)
                {
                  return Column(
                    children: [
                     Stack(
                       children: [
                         Container(
                           height: width*1.37,
                           width: width*1,
                           //color: Colors.red,
                         ),
                         Container(
                           height: width*1,
                           width:width*1,
                             decoration: BoxDecoration(
                                 //color: Colors.blue,
                                 image: DecorationImage(
                                     image:AssetImage(Content[index].image),
                                     fit: BoxFit.fill
                                 )
                             )
                           ),
                         Positioned(
                           top: index!=0? width*0.72 : width*0.55,
                           left: width*0.05,
                           child: Text(Content[index].text,
                             textAlign: TextAlign.left,
                             style: TextStyle(
                               color:colorconst.secondarycolor,
                               fontSize: width*0.1,
                               fontWeight: FontWeight.w700,
                               height:width*0.004,
                             ),
                           ),
                         ),

                       ],
                     ),
                      SizedBox(height: width*0.03,),
                      Padding(
                        padding:EdgeInsets.only(left: width*0.05),
                        child: Text(Content[index].description,
                          style:TextStyle(
                              fontWeight: FontWeight.w400,
                              color: colorconst.secondarycolor,
                              fontSize: width*0.04,
                          ),
                        ),
                      ),
                      SizedBox(height: width*0.06,),
                    ],
                  );
                }
            ),
          ),
          AnimatedSmoothIndicator(
            activeIndex:currentindex,
            count: Content.length,
            effect: ExpandingDotsEffect(
              dotColor: colorconst.containercolor,
              activeDotColor: colorconst.primarycolor,
              dotHeight: width*0.02,
              dotWidth: width*0.03,
            ),
          ),
          SizedBox(height: width*0.06,),
          Column(
            children: [
              InkWell(
                onTap: () {
                  if(currentindex==Content.length-1){
                    Navigator.pushReplacement(context,CupertinoPageRoute(builder: (context) => secondPage(),));
                  }
                  else {
                    controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.fastOutSlowIn
                    );
                  }
                },
                child: Container(
                  height: width*0.15,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.07),
                    color: colorconst.primarycolor,
                  ),
                  child: Center(
                    child: Text(
                      currentindex==Content.length-1 ? "Done" : "Next",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.045,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: width*0.04,),
              currentindex==Content.length-1 ? SizedBox() : InkWell(
                onTap: () {
                  controller.jumpToPage(Content.length-1);
                },
                child: Container(
                  height: width*0.15,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.07),
                    color: colorconst.containercolor,
                  ),
                  child: Center(
                    child: Text("Skip",
                      style: TextStyle(
                        color: colorconst.secondarycolor,
                        fontSize: width*0.045,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
