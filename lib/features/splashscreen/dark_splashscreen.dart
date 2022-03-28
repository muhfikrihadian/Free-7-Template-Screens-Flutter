import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF13131E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/ic_sword.png", width: 150,),
            SizedBox(height: 150,),
            Text("VENTURE", style: GoogleFonts.dmSerifDisplay(
              color: Color(0XFFFFFFFF),
              fontSize: 32
            ),)
          ],
        ),
      ),
    );
  }
}
