import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free7templatescreens/features/cart/bright_cart.dart';
import 'package:free7templatescreens/features/list_screen.dart';
import 'package:free7templatescreens/models/category.dart';
import 'package:free7templatescreens/models/dummy_data.dart';

class DarkScreen extends StatefulWidget {
  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen   > {
  @override
  Widget build(BuildContext context) {
    final brightLists = CATEGORIES_DARK.toList();
    List<Category> tipe = brightLists;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Bright Screens Template')),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ListPlace(
                tipe[index].id,
                tipe[index].title,
                tipe[index].image,
                tipe[index].description
            );
          },
          itemCount: tipe.length,
        ),
      ),
    );
  }
}
