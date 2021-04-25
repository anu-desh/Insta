import 'package:flutter/material.dart';
import 'package:insta_clone/config/palette.dart';
import 'package:insta_clone/config/text_styles.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function onTap;

  const MyButton({Key key, @required this.label, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Palette.blue),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: RegularBold.copyWith(color: Palette.white),
            )
          ],
        ),
      ),
    );
  }
}
