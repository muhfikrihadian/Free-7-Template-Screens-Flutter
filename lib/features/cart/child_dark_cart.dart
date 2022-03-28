import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ChildDarkCart extends StatelessWidget {
  String imgUrl, title, place, qty, price;

  ChildDarkCart(
      {required this.imgUrl,
      required this.title,
      required this.place,
      required this.qty,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imgUrl,
                  width: 80,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Color(0XFF191919),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      place,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Color(0XFFA3A8B8),
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.remove, color: Color(0XFF000000)),
                      Padding(
                        padding: EdgeInsets.only(left: 2, right: 2),
                        child: Text(
                          qty,
                          style: GoogleFonts.poppins(
                            color: Color(0XFF191919),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Icon(Icons.add, color: Color(0XFF000000)),
                    ],
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    color: Color(0XFF191919),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
