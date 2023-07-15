// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace, constant_identifier_names

import 'package:chatme_app/screens/Sign%20In_screen.dart';
import 'package:chatme_app/screens/LoginIn_screen.dart';
import 'package:chatme_app/widgets/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String welcomeRoute = 'welcomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset(kLogo),
                ),
                Text(
                  'ChatMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: kApparColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            MyButton(
              color: kApparColor,
              title: 'Login In',
              onPressed: () {
                Navigator.pushNamed(context, LoginInScreen.LoginInRoute);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('I dont have an account'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.SignRoute);
                  },
                  child: Text(
                    'SignIn',
                    style: TextStyle(color: kButtonColor2, fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
