import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free7templatescreens/helpers/style.dart';

class BrightEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/ic_bag_shop.png", width: 200,),
                SizedBox(height: 100,),
                Text("Success Order", style: tvHeader),
                SizedBox(height: 15,),
                Text("We will delivery your package \nas soon as possible", style: tvDesc, textAlign: TextAlign.center,),
                SizedBox(height: 50,),
                GestureDetector(
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: pink,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Align(
                      child: Text(
                        "Done",
                        style: tvButton,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
