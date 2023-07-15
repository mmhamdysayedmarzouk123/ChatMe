// ignore_for_file: library_private_types_in_public_api, constant_identifier_names, non_constant_identifier_names, avoid_print

import 'package:chatme_app/widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const chatRoute = 'chatScreen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;
  late User? SignedInuUser;

  void getCurrentUser() {
    try {
      final User = _auth.currentUser;
      if (User == null) {
        SignedInuUser = User;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      appBar: AppBar(
     
        backgroundColor: kApparColor,
        title: Row(
          children: [
            Image.asset(kLogo, height: 25),
            const SizedBox(width: 10),
            const Text('ChatMe')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: kApparColor,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    color: kApparColor,
                    splashColor: Colors.red,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
