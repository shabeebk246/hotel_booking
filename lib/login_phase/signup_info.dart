import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/login_phase/log_in.dart';

import '../main.dart';

class secondSignup extends StatefulWidget {
  const secondSignup({super.key});

  @override
  State<secondSignup> createState() => _secondSignupState();
}

class _secondSignupState extends State<secondSignup> {
  String? dropdownvalue;
  var items=[
    "male",
  "female",
  "other"
  ];

  TextEditingController namecontroller=TextEditingController();
  TextEditingController nicknamecontroller=TextEditingController();
  TextEditingController datecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController numbercontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        elevation: width*1,
        backgroundColor: colorconst.thirdcolor,
        title: Text("Fill Your Profile",
          style:TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: width*0.06,
              color: colorconst.secondarycolor
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
            SizedBox(height: width*0.35,),
            Center(
              child: Column(
                children: [
                 Container(
                   height: width*0.15,
                   width: width*0.9,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(width*0.03),
                     color: colorconst.logcolor,
                   ),
                   child: TextFormField(
                     textInputAction:TextInputAction.next,
                     controller: namecontroller,
                     keyboardType: TextInputType.text,
                     style: TextStyle(
                       color: colorconst.secondarycolor
                     ),
                     decoration: InputDecoration(
                       labelText: "Full Name",
                       labelStyle: TextStyle(
                           fontWeight: FontWeight.w500,
                           fontSize: width*0.043,
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
                  SizedBox(height: width*0.03,),
                  Container(
                    height: width*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.logcolor,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: nicknamecontroller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: colorconst.secondarycolor
                      ),
                      decoration: InputDecoration(
                        labelText: "Nickname",
                        labelStyle: TextStyle(
                          fontSize: width*0.043,
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
                  SizedBox(height: width*0.03,),
                  Container(
                    height: width*0.15,
                    width: width*0.9,
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
                          fontSize: width*0.043,
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
                  SizedBox(height: width*0.03,),
                  Container(
                    height: width*0.15,
                    width: width*0.9,
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
                  SizedBox(height: width*0.03,),
                  Container(
                    height: width*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.logcolor,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: numbercontroller,
                      style: TextStyle(
                          color: colorconst.secondarycolor
                      ),
                      decoration: InputDecoration(
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
                  SizedBox(height: width*0.03,),
                  Container(
                    height: width*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorconst.logcolor,
                    ),
                    child: DropdownButton(
                      dropdownColor: colorconst.thirdcolor,
                      underline: SizedBox(),
                      isExpanded: true,
                        hint: Padding(
                          padding: EdgeInsets.only(left: width*0.05),
                          child: Text("Gender",
                          style: TextStyle(
                            color: colorconst.secondarycolor
                          ),
                          ),
                        ),
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        value: dropdownvalue,
                        items: items.map((String? value) {
                          return DropdownMenuItem(
                              value: value,
                              child: Padding(
                                padding:EdgeInsets.only(left:width*0.05),
                                child: Text(value!,
                                style: TextStyle(
                                  color: colorconst.secondarycolor
                                ),
                                ),
                              )
                          );
                        }).toList(),
                        onChanged:(newvalue) {
                    setState(() {
                    dropdownvalue=newvalue;
                    });
                    },
                    ),
                  ),
                  SizedBox(height: width*0.2,),
                  InkWell(
                    onTap: () {
                      if(
                      namecontroller.text!=""&&
                      nicknamecontroller.text!=""&&
                      datecontroller.text!=""&&
                      emailcontroller.text!=""&&
                      numbercontroller.text!=""&&
                      dropdownvalue!=null
                      )
                        {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => secondLog(),));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submit succesfully!!!!"),
                          backgroundColor: colorconst.logcolor,
                          ));

                        }
                      else
                        {
                          namecontroller.text=="" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your name"),backgroundColor: colorconst.logcolor,)):
                          nicknamecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your nickname"),backgroundColor: colorconst.logcolor)):
                          datecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter the date"),backgroundColor: colorconst.logcolor)):
                          emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your Email"),backgroundColor: colorconst.logcolor)):
                          numbercontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your number"),backgroundColor: colorconst.logcolor)):
                          dropdownvalue==null ?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Select your gender"),backgroundColor: colorconst.logcolor)) :
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter valied details"),backgroundColor: colorconst.logcolor));
                        }
                    },
                    child: Container(
                      height: width*0.15,
                      width: width*0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.1),
                          color: colorconst.primarycolor
                      ),
                      child: Center(child: Text("Sign in with password",
                        style: TextStyle(
                            color: colorconst.secondarycolor,
                            fontWeight: FontWeight.w600,
                            fontSize: width*0.04
                        ),
                      )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
