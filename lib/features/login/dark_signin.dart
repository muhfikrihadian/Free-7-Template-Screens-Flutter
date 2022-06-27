import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF181A20),
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 40, right: 40, bottom: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/ic_coin.png",
                width: 50,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome back. \n Let’s make money.",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
              SizedBox(
                height: 70,
              ),
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                    fillColor: Color(0XFF262A34),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    hintText: "E-mail",
                    hintStyle: GoogleFonts.openSans(color: Color(0XFF6F7075))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                    fillColor: Color(0XFF262A34),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    hintText: "Password",
                    hintStyle: GoogleFonts.openSans(color: Color(0XFF6F7075)),
                    suffixIcon:
                        Icon(Icons.visibility, color: Color(0XFF6F7075))),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment(1, 0.5),
                child: Text(
                  "Forgot My Password",
                  style: GoogleFonts.poppins(color: Color(0XFF6A6B70)),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0XFFFCAC15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                          color: Color(0XFF6B4909),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account ?, ",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign up",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
