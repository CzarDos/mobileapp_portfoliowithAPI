import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowithapi/pages/index.dart';

import 'login_or_registerpage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return ProfilePage();
          }
          //user is not logged in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
    //
  }
}
