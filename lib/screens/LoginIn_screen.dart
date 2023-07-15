// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace, constant_identifier_names, non_constant_identifier_names, file_names, unused_import, avoid_print

import 'package:chatme_app/screens/chat_screen.dart';
import 'package:chatme_app/widgets/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class LoginInScreen extends StatefulWidget {
  static const String LoginInRoute = 'LoginInScreen';
  const LoginInScreen({Key? key}) : super(key: key);

  @override
  _LoginInScreenState createState() => _LoginInScreenState();
}

class _LoginInScreenState extends State<LoginInScreen> {
  final _formKey = GlobalKey<FormState>();
  var Email = TextEditingController();
  var Password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kApparColor,
        ),
        backgroundColor: kbackground,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 180,
                child: Image.asset(kLogo),
              ),
              const SizedBox(height: 50),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: Email,
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return 'email is incorrect';
                  } else {
                    return null;
                  }
                },
                onChanged: (email) {
                  print(email);
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Enter your Email',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: KenabelColor,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kFocseColor,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: Password,
                obscureText: true,
                validator: (Password) {
                  if (Password == null || Password.isEmpty) {
                    return 'The password is incorrect';
                  } else {
                    return null;
                  }
                },
                onChanged: (password) {
                  print(password);
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  labelText: 'Enter your password',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: KenabelColor,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kButtonColor2,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                color: kApparColor,
                title: 'Login in',
                onPressed: () {
                  // Navigator.pushNamed(context, ChatScreen.chatRoute);
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        'process success',
                        style: TextStyle(color: kApparColor),
                      ),
                    ));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
