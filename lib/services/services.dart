import 'package:flutter/widgets.dart';

class Services {
  void dismissKeyBoard(BuildContext context) {
    FocusNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  bool testData(String regex, String test) {
    // String regexpattern = 'r\'' + regex + '\'';
    String regexpattern = r'^[a-zA-Z0-9]+$';
    Pattern pattern = regexpattern;
    print(regexpattern);
    print(pattern.toString());
    RegExp regExp = RegExp(regex);
    bool result = regExp.hasMatch(test);
    print("Result is: " + result.toString());
    return result;
  }
}
