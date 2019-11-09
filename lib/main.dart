import 'package:flutter/material.dart';
import 'package:regexapp/homepage.dart';
import 'package:regexapp/services/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Services().dismissKeyBoard(context);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: MyHomePage(),
      ),
    );
  }
}