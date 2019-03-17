import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/screens/screen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      theme: ThemeData(
        primaryColor: Color(0xff5682a3),
        backgroundColor: Color(0xffe7ebf0),
        accentColor: Color(0xff598fba),
      ),
      home: HomeScreen(),
    );
  }
}
