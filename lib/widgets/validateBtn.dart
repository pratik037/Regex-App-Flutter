import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regexapp/services/services.dart';

class ValidateBtn extends StatelessWidget {
  final TextEditingController regex;
  final TextEditingController test;
  ValidateBtn({Key key, this.regex, this.test}) : super(key: key);

  Services services = Services();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RaisedButton(
        onPressed: () {
          services.dismissKeyBoard(context);
          print("Regex Received: " + regex.text);
          print("Test Data Received: " + test.text);
          if (regex.text.isNotEmpty && test.text.isNotEmpty) {
            bool result = services.testData(regex.text, test.text);
            if (result) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Center(child: Text("Evaluation Result")),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          )
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.checkCircle,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Expression is correct"),
                          ],
                        ),
                      ));
            } else {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Center(child: Text("Evaluation Result")),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          )
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.times,
                              color: Colors.red[700],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Incorrect Expression"),
                          ],
                        ),
                      ));
            }
          }
          else{
            Scaffold.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red,

              content: Text("Cannot have empty field", style: TextStyle(fontSize: 18),),
            ));
          }
        },
        elevation: 3,
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Validate Regex",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
