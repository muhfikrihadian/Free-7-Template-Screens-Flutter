import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:free7templatescreens/helpers/style.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(DarkRating());
}

class DarkRating extends StatefulWidget {
  @override
  State<DarkRating> createState() => DarkRatingChild();
}

class DarkRatingChild extends State<DarkRating> {
  int selectedIndex = -1;
  String selectedRating = "";

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String image, String ratingValue) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
            selectedRating = ratingValue;
          });
        },
        child:  Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: selectedIndex == index ? emojiSelected : emojiUnselect,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Align(
              child: Image.asset(image, width: 25,)
          ),
        ),
      );
    }

    Widget btnRateNow(){
      return GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 210,
              height: 55,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0XFF34D186),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(selectedRating),
                  ));
                },
                child: Text(
                  "Rate Now",
                  style: txtButton,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0XFF181925),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.0, bottom: 100, left: 40, right: 40),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/img_pizza.png", width: 200,),
                      SizedBox(height: 20,),
                      Text("Pizza", style: GoogleFonts.poppins(
                        color: whitePrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),),
                      Text("\$90,00", style: GoogleFonts.poppins(
                        color: whitePrimary,
                        fontSize: 20,
                      ),),
                      SizedBox(height: 90,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Was it delicious ?", style: GoogleFonts.poppins(
                            color: whitePrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                          // option(0, "Backpacker", "Find cheap tour packages", "\$10"),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          option(0, "assets/images/ic_emoji_happy.png", "Happy"),
                          option(1, "assets/images/ic_emoji_smile.png", "Smile"),
                          option(2, "assets/images/ic_emoji_sad.png", "Sad"),
                          option(3, "assets/images/ic_emoji_angry.png", "Angry"),
                        ],
                      ),
                      SizedBox(height: 90,),
                      selectedIndex == -1 ? SizedBox() : btnRateNow(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
