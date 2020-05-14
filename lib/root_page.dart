import 'package:flutter/material.dart';
import 'tab_page.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return TabPage();
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.hasData) {
          return TabPage(snapshot.data);
        } else {
          return LoginPage();
        }
      },
    );
  }
}
