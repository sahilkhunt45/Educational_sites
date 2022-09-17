import 'package:educational_website/homepage.dart';
import 'package:educational_website/website.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'webpage': (context) => WebSitePage(),
      },
    ),
  );
}
