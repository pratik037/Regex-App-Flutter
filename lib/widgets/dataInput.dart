
import 'package:flutter/material.dart';

class DataInput extends StatelessWidget {
  final String hint;
  final String label;
  final TextEditingController controller;
  const DataInput({Key key, this.hint, this.label, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}