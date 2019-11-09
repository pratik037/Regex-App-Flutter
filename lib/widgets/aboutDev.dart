import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regexapp/services/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutInfoBtn extends StatelessWidget {
  const AboutInfoBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Services().dismissKeyBoard(context);
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 3,
                  title: Text("About Regex Validator"),
                  content: Container(
                    height: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Regex Validator is used to verify the custom regular expressions made by the user against the data they enter. It helps to verify whether the regular expression is correct or not. ",
                            textAlign: TextAlign.justify,
                            ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Developed by Pratik Singhal",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Close"),
                    ),
                    FlatButton(
                      onPressed: () {
                        _launchGithub();
                      },
                      child: Text("Github"),
                    ),
                    FlatButton(
                      onPressed: () {
                        _launchInsta();
                      },
                      child: Text("Insta"),
                    ),
                    FlatButton(
                      onPressed: () {
                        _launchTwitter();
                      },
                      child: Text("Twitter"),
                    ),
                  ],
                ));
      },
      icon: Icon(FontAwesomeIcons.handsHelping),
    );
  }

  _launchGithub() async {
    const url = 'https://github.com/pratik037';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchInsta() async {
    const url = 'https://instagram.com/pratik037';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTwitter() async {
    const url = 'https://twitter.com/pratik_037';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
