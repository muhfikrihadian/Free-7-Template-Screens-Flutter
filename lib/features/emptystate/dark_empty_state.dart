import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1B1B33),
      body: Column(
        children: [
          Image.asset("assets/images/ic_graph.png",),
          SizedBox(height: 70,),
          Text("Boost Profit!", style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0XFFFFFFFF)
          ),),
          SizedBox(height: 15,),
          Text("Our tools are helping business \n to grow much faster",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Color(0XFFFFFFFF)
            ),
            textAlign: TextAlign.center,),
          SizedBox(height: 60,),
          Image.asset("assets/images/ic_btn_rocket.png", width: 65,)
        ],
      ),
    );
  }
}
