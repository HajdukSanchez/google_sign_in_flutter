import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class GoogleSignInService with ChangeNotifier {
  static final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  static Future<GoogleSignInAccount?> singInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      final googleKey = await account?.authentication;
      final googleAuthUrl = Uri(
        scheme: "https",
        host: "auth-app-flutter.herokuapp.com",
        path: "/google",
      );
      final sessionData = await http.post(
        googleAuthUrl,
        body: {
          "token": googleKey?.idToken,
        },
      );
      print("Here we get our session data: ${sessionData.body}");
      return account;
    } catch (e) {
      return null;
    }
  }

  static Future<GoogleSignInAccount?> signOutGoogle() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signOut();
      return account;
    } catch (e) {
      return null;
    }
  }
}
