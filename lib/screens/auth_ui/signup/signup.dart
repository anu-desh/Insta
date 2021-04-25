import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/config/palette.dart';
import 'package:insta_clone/config/text_styles.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: SvgPicture.asset(
                "assets/vectors/logo2.svg",
                height: 50,
              ),
            ),
            Container(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Palette.blue),
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/vectors/fbLogo.svg",height: 20,),
            Text(
              "   Log in with facebook",
              style: RegularBold.copyWith(color: Palette.white),
            )
          ],
        ),
      ),
    ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Expanded(
                child: Divider(
                  color: Palette.gray,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "OR",
                  style: RegularBold.copyWith(color: Palette.gray),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Palette.gray,
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/emailSignup");
              },
              child: Text(
                "Sign up with email or phone number",
                style: RegularBold.copyWith(color: Palette.blue),
              ),
            ),
            SizedBox(
              height: 160,
            ),
            Divider(
              color: Palette.gray,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: RegularBold.copyWith(color: Palette.gray2),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: Text(
                    " Log in.",
                    style: RegularBold.copyWith(color: Palette.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
