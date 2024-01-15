import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/profile/profile_one.dart';

import '../../main.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
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

  bool numval=false;
  final numbervalidation=RegExp(r"[0-9]{10}");
  bool emailval=false;
  final emailvalidation=RegExp(r"^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      appBar: AppBar(
        backgroundColor: colorconst.thirdcolor,
        elevation: width*1,
        title: Text("Edit Profile",
        style: TextStyle(
          color: colorconst.secondarycolor,
          fontSize:width*0.058,
          fontWeight: FontWeight.w700
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height*0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Container(
                      height: width*0.15,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        controller: datecontroller,
                        textInputAction: TextInputAction.next,
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
                    Container(
                      height: width*0.15,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor,
                        border: Border.all(color: emailval==true?colorconst.logout:colorconst.logcolor)
                      ),
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                       onChanged: (value) {
                          if(!emailvalidation.hasMatch(value!))
                            {
                             emailval=true;
                            }
                          else
                            {
                             emailval=false;
                            }
                          setState(() {

                          });
                        },
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
                      width: width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorconst.logcolor,
                        border: Border.all(color: numval==true ? colorconst.logout : colorconst.logcolor)
                      ),
                      child: TextFormField(
                        maxLength: 10,
                        textInputAction: TextInputAction.next,
                        controller: numbercontroller,
                        keyboardType: TextInputType.phone,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        icon: Icon(Icons.keyboard_arrow_down_outlined,
                        color: colorconst.secondarycolor,
                        ),
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
                  ],
                ),
              ),
              SizedBox(height: width*0.05,),
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
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => profileOne()));
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
                      borderRadius: BorderRadius.circular(width*0.3),
                      color: colorconst.primarycolor
                  ),
                  child: Center(
                    child: Text("Update",
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
    );
  }
}
