// ignore_for_file: sized_box_for_whitespace, constant_identifier_names, non_constant_identifier_names, unnecessary_const, avoid_print, unused_import, unused_local_variable, use_build_context_synchronously, file_names, unused_field

import 'package:chatme_app/screens/chat_screen.dart';
import 'package:chatme_app/widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/my_button.dart';

class SignInScreen extends StatefulWidget {
  static const String SignRoute = 'SignScreen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  var Email = TextEditingController();
  var Password = TextEditingController();

  bool showSpannier = false;

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
              ModalProgressHUD(
                inAsyncCall: showSpannier,
                child: MyButton(
                  color: kApparColor,
                  title: 'Sign in',
                  onPressed: () {
                    setState(() {
                      showSpannier = true;
                    });
                    Navigator.pushNamed(context, ChatScreen.chatRoute);
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'process success',
                          style: TextStyle(color: kApparColor),
                        ),
                      ));
                      showSpannier = false;
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
