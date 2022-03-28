import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrightSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg_splash_2.png"))),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/ic_home.png",
                  width: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "HouseQu",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
