import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BrightRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset("assets/images/ic_office.png"),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Enjoy Your Meal",
                  style: GoogleFonts.poppins(
                      color: Color(0XFF121622),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Please rate our experience",
                  style:
                      GoogleFonts.poppins(color: Color(0XFF808EAB), fontSize: 16),
                ),
                SizedBox(
                  height: 50,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0XFFF8F8F8),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            minLines: 1,
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Your message",
                              hintStyle: TextStyle(
                                color: Color(0XFF808EAB)
                              )
                            ),
                            // style: ,
                          ),
                        ),
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: Container(
                    color: Color(0XFFF8F8F8),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0XFF4074E6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: Text(
                        "Submit Review",
                        style: GoogleFonts.poppins(
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
