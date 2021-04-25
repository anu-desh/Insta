import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/config/palette.dart';
import 'package:insta_clone/config/text_styles.dart';
import 'package:insta_clone/screens/auth_ui/local_widgets/button.dart';
import 'package:insta_clone/screens/auth_ui/local_widgets/inputbox.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              SvgPicture.asset(
                "assets/vectors/logo2.svg",
                height: 50,
              ),
              SizedBox(
                height: 15,
              ),
              InputBox(
                label: "Phone number, email or username",
              ),
              SizedBox(
                height: 15,
              ),
              InputBox(label: "Password"),
              SizedBox(
                height: 15,
              ),
              MyButton(
                label: "Log In",
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot your login deatils? ",
                    style: RegularBold.copyWith(color: Palette.gray2),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/login");
                    },
                    child: Text(
                      "Get help logging in.",
                      style: RegularBold.copyWith(color: Palette.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/vectors/fbBlue.svg",
                      height: 20,
                    ),
                    Text(
                      "  Log in with Facebook",
                      style: RegularBold.copyWith(color: Palette.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Divider(
                color: Palette.gray,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: RegularBold.copyWith(color: Palette.gray2),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    child: Text(
                      " Sign up.",
                      style: RegularBold.copyWith(color: Palette.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
