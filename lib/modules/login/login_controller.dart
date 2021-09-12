import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pageflow/shared/auth/auth_controller.dart';
import 'package:pageflow/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      final response = await _googleSignIn.signIn();
      // ignore: avoid_print
      print(response);
      final user =
          UserModel(name: response!.displayName!, photoURL: response.photoUrl!);

      authController.setUser(context, user);
    } catch (error) {
      // ignore: avoid_print
      print(error);

      authController.setUser(context, null);
    }
  }
}
