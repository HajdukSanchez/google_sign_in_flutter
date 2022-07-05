import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:auth_app/enums/enums.dart';
import 'package:auth_app/widgets/widgets.dart';
import 'package:auth_app/services/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google / Apple Auth"),
        actions: [
          IconButton(
              onPressed: () {
                GoogleSignInService.signOutGoogle();
              },
              icon: const Icon(FontAwesomeIcons.arrowRightFromBracket))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            key: const Key("buttons_container"),
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SignInButton(),
              SignInButton(
                type: SignInType.apple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
