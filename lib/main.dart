import "package:flutter/material.dart";
import "package:hikodeodev/homepage.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "odev 4 ve 5",
      home: Homepage(),
    );
  }
}
