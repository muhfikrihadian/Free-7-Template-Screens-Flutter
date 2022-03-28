import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkPricing extends StatelessWidget {
  Widget serviceOffer(String text) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/ic_orange_check.png",
              width: 25,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style:
                  GoogleFonts.poppins(color: Color(0XFFFFFFFF), fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/bg_dark_pricing.png"),
              fit: BoxFit.cover,
            )),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      "assets/images/ic_dark_pricing.png",
                      width: 150,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Pro Features",
                      style: GoogleFonts.poppins(
                          color: Color(0XFFFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Unlock the winner modules \n and get more insights",
                      style: GoogleFonts.poppins(
                          color: Color(0XFF7F7FAD), fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    serviceOffer("Unlock Our Top Charts"),
                    serviceOffer("Save More than 1,000 Docs"),
                    serviceOffer("24/7 Customer Support"),
                    serviceOffer("Track Company’s Spending"),
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shadowColor: Color(0XFFE57C73),
                            elevation: 30,
                            backgroundColor: Color(0XFFE57C73),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: () {},
                        child: Stack(
                          children: [
                            Align(
                              child: Text(
                                "Subscribe Now",
                                style: GoogleFonts.poppins(
                                  color: Color(0XFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                "assets/images/ic_btn_orange_arrow.png",
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      child: Text(
                        "Contact Support",
                        style: GoogleFonts.poppins(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
