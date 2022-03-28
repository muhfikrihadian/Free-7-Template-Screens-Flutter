import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrightCart extends StatefulWidget {
  @override
  State<BrightCart> createState() => _BrightCartState();
}

class _BrightCartState extends State<BrightCart> {
  int selectedIndex = -1;

  Widget option(int index, String day, String date, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: isActive ? Color(0xffFFFFFF) : Color(0xffF4F4F6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              children: [
                selectedIndex == index
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          "assets/images/ic_check_blue.png",
                          width: 25,
                        ),
                      )
                    : SizedBox(),
                Text(
                  day,
                  style: GoogleFonts.poppins(
                      color: Color(0XFF000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                      color: Color(0XFFA8ACB6), fontSize: 12),
                ),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFBFF),
      body: Column(
        children: [
          Image.asset("assets/images/img_bali.png"),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "Claes's Hotel",
                style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Denpasar, Bali",
                style: GoogleFonts.poppins(
                    color: Color(0xff2F323A),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pantai Pandawa adalah salah satu para \nkawasan wisata di area Kuta selatan sana \nKabupaten Dekat Bandung, Bali.",
                  style: GoogleFonts.poppins(
                      color: Color(0xff2F323A),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Booking Now",
                  style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                // Expanded(
                //   child: ListView(
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //       children: <Widget>[
                //         option(0, "THU", "19 JAN", true),
                //         option(1, "FRI", "20 JAN", true),
                //         option(2, "SAT", "21 JAN", false),
                //         option(3, "SUN", "22 JAN", true),
                //   ]),
                // )
                // ListView.builder(
                //   itemBuilder: (context, index) {
                //     if (index == 0) {
                //       //first row is horizontal scroll
                //       var singleChildScrollView = SingleChildScrollView(
                //           child: Row(
                //             children: <Widget>[
                //               option(0, "THU", "19 JAN", true),
                //               option(1, "FRI", "20 JAN", true),
                //               option(2, "SAT", "21 JAN", false),
                //               option(3, "SUN", "22 JAN", true),
                //             ],
                //           ),
                //           scrollDirection: Axis.horizontal);
                //       return singleChildScrollView;
                //     } else {
                //       return new Row(
                //         children: <Widget>[SizedBox(), SizedBox()],
                //       );
                //     }
                //   },
                //   itemCount:
                //       10, // 9 rows of AllGenresAndMoods + 1 row of PopularGenresAndMoods
                // ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$22,800",
                      style: GoogleFonts.poppins(
                          color: Color(0xff3F6DF6),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "/Night",
                      style: GoogleFonts.poppins(
                          color: Color(0xff2F323A),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 5),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0XFF3F6DF6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: GoogleFonts.poppins(
                            color: Color(0XFFFAFAFA),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              label: ""),
        ],
      ),
    );
  }
}
