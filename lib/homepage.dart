import 'package:flutter/material.dart';
import 'package:regexapp/widgets/dataInput.dart';
import 'package:regexapp/widgets/validateBtn.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _regex = TextEditingController();
  TextEditingController _test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "REGEX VALIDATOR",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height* 0.50,
            child: Image.asset('assets/logo.png'),
          ),
          DataInput(
            hint: "^\[a-z\]\$",
            label: "Regular Expression here",
            controller: _regex,
          ),
          DataInput(
            hint: "Test Data for Regex",
            label: "Test Data",
            controller: _test,
          ),
          ValidateBtn(
            regex: _regex,
            test: _test,
          )
        ],
      ),
    );
  }
}
