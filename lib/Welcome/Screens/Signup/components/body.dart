import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:waterreminder/Welcome/Screens/Login/login_screen.dart';
import 'package:waterreminder/Welcome/Screens/Signup/components/social_icon.dart';
import 'package:waterreminder/Welcome/Screens/Signup/signup_screen.dart';
import 'package:waterreminder/Welcome/components/already_have_an_account_acheck.dart';
import 'package:waterreminder/Welcome/components/rounded_button.dart';
import 'package:waterreminder/Welcome/components/rounded_input_field.dart';
import 'package:waterreminder/Welcome/components/rounded_password_field.dart';
import 'package:waterreminder/homeScreen/homescreen.dart';


import '../../../../main.dart';
import 'background.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/signup.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
              SchedulerBinding.instance.addPostFrameCallback((_) {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) {
              return HomeScreen();
    },
    ),
    );
    },
    );
    }
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
