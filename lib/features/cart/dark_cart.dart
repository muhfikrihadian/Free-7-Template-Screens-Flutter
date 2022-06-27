import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:free7templatescreens/features/cart/child_dark_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkCart extends StatelessWidget {

  Widget cardInformation() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informations",
              style: GoogleFonts.poppins(
                  color: Color(0XFF191919),
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub total",
                  style: GoogleFonts.poppins(
                      color: Color(0XFF191919),
                      fontSize: 16),
                ),
                Text(
                  "Rp.80.000",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF191919),
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: GoogleFonts.poppins(
                      color: Color(0XFF191919),
                      fontSize: 16),
                ),
                Text(
                  "Rp.10.000",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF191919),
                      fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                      color: Color(0XFF191919),
                      fontSize: 16),
                ),
                Text(
                  "Rp.90.000",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF191919),
                      fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttons(){
    return Column(
      children: <Widget>[
        SizedBox(height: 50,),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SizedBox(
            width: double.infinity,
            height: 55,
            child: Container(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFF6D13A),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                onPressed: () {},
                child: Text(
                  "Checkout Now",
                  style: GoogleFonts.poppins(
                    color: Color(0XFFFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SizedBox(
            width: double.infinity,
            height: 55,
            child: Container(
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFD9D9D9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                onPressed: () {},
                child: Text(
                  "Save To Wishlist",
                  style: GoogleFonts.poppins(
                      color: Color(0XFFFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF2D2d2d),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "My Shopping Cart",
                  style: GoogleFonts.poppins(
                    color: Color(0XFFFFFFFF),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ChildDarkCart(
                  imgUrl: "assets/images/img_burger.png",
                  title: "Burger",
                  place: "Tebet, South Jakarta",
                  qty: "2",
                  price: "Rp.50.000"),
              ChildDarkCart(
                  imgUrl: "assets/images/img_coca-cola.jpeg",
                  title: "Coca-cola",
                  place: "Grogol, West Jakarta",
                  qty: "3",
                  price: "Rp.30.000"),
              cardInformation(),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
