import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:free7templatescreens/helpers/style.dart';
import 'package:google_fonts/google_fonts.dart';

class BrightPricing extends StatefulWidget {
  @override
  _BrightPricingState createState() => _BrightPricingState();
}

class _BrightPricingState extends State<BrightPricing> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/ic_crown.png",
              width: 100,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Which one you wish \n to upgrade ?",
              style: GoogleFonts.poppins(
                color: Color(0XFF191919),
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget option(int index, String imgUrl, String title, String desc, String subDesc) {
      return GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 315,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0XFFD9DEEA),
              )),
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imgUrl,
                  width: 60,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title, style: GoogleFonts.poppins(
                        color: Color(0XFF191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(desc, style: GoogleFonts.poppins(
                              color: Color(0XFFA3A8B8),
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                          ),),
                          SizedBox(width: 5,),
                          Text(subDesc, style: GoogleFonts.poppins(
                              color: Color(0XFF5343C2),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: selectedIndex == index ? Image.asset(
                    "assets/images/ic_check.png",
                    width: 25,)
                  : SizedBox(width: 25,),
                )
              ],
            ),
          ),
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: whitePrimary,
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 30, right: 30),
        child: Column(
          children: [
            header(),
            SizedBox(height: 50,),
            option(0, "assets/images/ic_pig.png", "Money Security", "Support", "24/7"),
            SizedBox(height: 10,),
            option(1, "assets/images/ic_second_signin.png", "Automation", "We provide", "Invoice"),
            SizedBox(height: 10,),
            option(2, "assets/images/ic_dollar.png", "Balance Report", "Can up to", "10k"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0XFF6050E7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Upgrade Now",
              style: GoogleFonts.poppins(
                color: Color(0XFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w600,
            ),
            ),
          ), label: ""),
          BottomNavigationBarItem(icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/images/ic_arrow_right.png",
              width: 25,),
          ),
              label: ""),
        ],
      ),
    );
  }
}
