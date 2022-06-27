import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free7templatescreens/features/cart/bright_cart.dart';
import 'package:free7templatescreens/features/cart/dark_cart.dart';
import 'package:free7templatescreens/features/emptystate/bright_empty_state.dart';
import 'package:free7templatescreens/features/emptystate/dark_empty_state.dart';
import 'package:free7templatescreens/features/getstarted/bright_started.dart';
import 'package:free7templatescreens/features/getstarted/dark_started.dart';
import 'package:free7templatescreens/features/login/bright_signin.dart';
import 'package:free7templatescreens/features/login/dark_signin.dart';
import 'package:free7templatescreens/features/pricing/bright_pricing.dart';
import 'package:free7templatescreens/features/pricing/dark_pricing.dart';
import 'package:free7templatescreens/features/rating/bright_rating.dart';
import 'package:free7templatescreens/features/rating/dark_rating.dart';
import 'package:free7templatescreens/features/splashscreen/bright_splashscreen.dart';
import 'package:free7templatescreens/features/splashscreen/dark_splashscreen.dart';
import 'package:free7templatescreens/main.dart';

class ListPlace extends StatelessWidget{
  final String id;
  final String name;
  final String image;
  final String description;

  ListPlace(this.id, this.name, this.image, this.description);

  void _navigateToNextScreen(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  }

  Widget getWidget(String id){
    if(id == "B1"){
      return BrightSplashScreen();
    } else if(id == "B2"){
      return BrightStarted();
    } else if(id == "B3"){
      return BrightSignIn();
    } else if(id == "B4"){
      return BrightPricing();
    } else if(id == "B5"){
      return BrightEmptyScreen();
    } else if(id == "B6"){
      return BrightCart();
    } else if(id == "B7"){
      return BrightRating();
    } else if(id == "D1"){
      return DarkSplashScreen();
    } else if(id == "D2"){
      return DarkStarted();
    } else if(id == "D3"){
      return DarkSignIn();
    } else if(id == "D4"){
      return DarkPricing();
    } else if(id == "D5"){
      return DarkEmptyScreen();
    } else if(id == "D6"){
      return DarkCart();
    } else if(id == "D7"){
      return DarkRating();
    } else {
      return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;
    return Card(
      child: Padding(
        padding: EdgeInsets.only(top:15, bottom: 15),
        child: Column(
          children: <Widget>[
            Container(
              child:  ListTile(
                leading: Image.asset("assets/images/" + image),
                title: Text(name),
                subtitle: Text(description.length > 100 ? description.substring(0, 100) + "..." : description),
                onTap: () {
                  widget = getWidget(id);
                  _navigateToNextScreen(context, widget);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}