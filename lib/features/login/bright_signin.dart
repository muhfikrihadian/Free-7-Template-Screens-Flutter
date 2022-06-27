import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrightSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 30, right: 40),
        child: Column(
          children: [
            Image.asset("assets/images/ic_second_signin.png", width: 250,),
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Email Address", style: GoogleFonts.openSans(
                color: Color(0XFF17171A),), textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 5,),
            TextFormField(
              style: GoogleFonts.openSans(color: Color(0XFF17171A), fontSize: 16, fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                  fillColor: Color(0XFFF3F3F3),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      borderSide: BorderSide.none),
                  hintText: "E-mail",
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Password", style: GoogleFonts.openSans(
                color: Color(0XFF17171A),), textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 5,),
            TextFormField(
              style: GoogleFonts.openSans(color: Color(0XFF17171A), fontSize: 16, fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                fillColor: Color(0XFFF3F3F3),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide.none),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 50,),
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
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        color: Color(0XFFF8F8F8),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: Container(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Create New Account",
                    style: GoogleFonts.poppins(
                        color: Color(0XFFCFCFCF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
