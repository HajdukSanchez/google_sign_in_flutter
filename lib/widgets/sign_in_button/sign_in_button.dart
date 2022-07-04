import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:auth_app/enums/enums.dart';

class SignInButton extends StatelessWidget {
  final SignInType type;

  const SignInButton({
    Key? key,
    this.type = SignInType.google,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        key: const Key("button_container"),
        splashColor: Colors.white70,
        height: 40,
        color: type == SignInType.google ? Colors.red : Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: () {
          // TODO: Sign in with Google or Apple
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              type == SignInType.google ? FontAwesomeIcons.google : FontAwesomeIcons.apple,
              color: Colors.white,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  "Continue with ${type == SignInType.google ? 'Google' : 'Apple'}",
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}
