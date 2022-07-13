import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free7templatescreens/features/list_screen.dart';
import 'package:free7templatescreens/models/category.dart';
import 'package:free7templatescreens/models/dummy_data.dart';

class BrightScreen extends StatefulWidget {
  @override
  State<BrightScreen> createState() => _BrightScreenState();
}

class _BrightScreenState extends State<BrightScreen> {
  @override
  Widget build(BuildContext context) {
    final brightLists = CATEGORIES_BRIGHT.toList();
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
