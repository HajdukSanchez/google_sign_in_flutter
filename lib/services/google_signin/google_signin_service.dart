import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService with ChangeNotifier {
  static final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  static Future<GoogleSignInAccount?> singInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      final googleKey = await account?.authentication;
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
