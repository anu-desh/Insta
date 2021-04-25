import 'package:flutter/material.dart';
import 'package:insta_clone/config/palette.dart';

class InputBox extends StatelessWidget {
  final String label;

  const InputBox({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.gray2),
        ),
      ),
    );
  }
}
