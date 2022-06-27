import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free7templatescreens/features/bright_screen.dart';
import 'package:free7templatescreens/features/dark_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0XFFFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/img_background.jpeg",
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Free Download Screens Template",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0XFF000000),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "By : Muh.Fikri.H",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0XFF000000),
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 400,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: Container(
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0XFF5468FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              )),
                          onPressed: () {
                            navigateToBrightScreen(context);
                          },
                          child: Text(
                            "Bright Screen",
                            style: GoogleFonts.poppins(
                                color: Color(0XFFFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: Container(
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0XFF3A3845),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              )),
                          onPressed: () {
                            navigateToDarkScreen(context);
                          },
                          child: Text(
                            "Dark Screen",
                            style: GoogleFonts.poppins(
                                color: Color(0XFFFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void navigateToBrightScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => BrightScreen()));
  }

  void navigateToDarkScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DarkScreen()));
  }
}
