import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/forgot_password/forgot_one.dart';
import 'package:hotel_booking/home_phase/booking&review/hotel_one.dart';
import 'package:hotel_booking/home_phase/booking/cancld_booking.dart';
import 'package:hotel_booking/home_phase/booking/cmplt_booking.dart';
import 'package:hotel_booking/home_phase/booking/home_booking.dart';
import 'package:hotel_booking/home_phase/bottom_navigationbar.dart';
import 'package:hotel_booking/home_phase/home_1.dart';
import 'package:hotel_booking/home_phase/home_search.dart';
import 'package:hotel_booking/home_phase/payment/ticket.dart';
import 'package:hotel_booking/home_phase/profile/edit_profile.dart';
import 'package:hotel_booking/home_phase/profile/profile_one.dart';
import 'package:hotel_booking/login_phase/log_in.dart';
import 'package:hotel_booking/login_phase/signin.dart';
import 'package:hotel_booking/login_phase/signup_info.dart';
import 'package:hotel_booking/open_phase/first_page.dart';
import 'package:hotel_booking/open_phase/second_page.dart';
import 'package:hotel_booking/open_phase/threein_one.dart';

var height;
var width;

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.urbanistTextTheme()
        ),
        home:firstPage()
      ),
    );
  }
}
