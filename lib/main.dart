// ignore_for_file: use_key_in_widget_constructors, unused_import, unused_element

import 'package:chatme_app/firebase_options.dart';
import 'package:chatme_app/screens/chat_screen.dart';
import 'package:chatme_app/screens/Sign%20In_screen.dart';
import 'package:chatme_app/screens/LoginIn_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatMe app',
      initialRoute: WelcomeScreen.welcomeRoute,
      routes: {
        WelcomeScreen.welcomeRoute: (context) => const WelcomeScreen(),
        LoginInScreen.LoginInRoute: (context) => const LoginInScreen(),
        SignInScreen.SignRoute: (context) => const SignInScreen(),
        ChatScreen.chatRoute: (context) => const ChatScreen(),
      },
    );
  }
}
