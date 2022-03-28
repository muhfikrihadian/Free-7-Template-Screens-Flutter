import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrightStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top:50, bottom: 50, left: 20, right: 20),
          child: Column(
            children:[
              Text("Health First.", style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                  color: Color(0xFF000000)
              ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10,),
              Text("Exercise together with our best \n community fit in the world", style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0XFF828284)
              ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 50,),
              Image.asset("assets/images/ic_gallery.png", width: MediaQuery.of(context).size.width, fit: BoxFit.fitHeight,),
              SizedBox(height: 50,),
              Center(
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0XFFAFEA0D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Shape My Body", style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Color(0XFF000000),
                      ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Terms & Conditions", style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0XFF000000),
                  decoration: TextDecoration.underline,
              ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
