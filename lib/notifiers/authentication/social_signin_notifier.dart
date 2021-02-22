import 'package:apple_sign_in/apple_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/mixins/toast.dart';

class SocialSigninNotifier extends ChangeNotifier with Toast {
  final Future<bool> isAvailableFuture = AppleSignIn.isAvailable();

  Future<void> logInWithGoogle(BuildContext context) async {
    print("sign in google");
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn().catchError(
          (onError) => showError(
            context: context,
            title: "Error",
            subtitle: onError.toString(),
          ),
        );

    print("###Init");
    // Obtain the auth details from the request
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      print("Googler user: $googleUser");
      print("Google Auth: $googleAuth");

      //this kid decode token is not match with google secure token
      print(googleAuth.idToken);

      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      print(credential);

      // Once signed in, return the UserCredential
      // await FirebaseAuth.instance.signInWithCredential(credential);
      // var idToken = await FirebaseAuth.instance.currentUser.getIdToken();
      // print(idToken);
    }
  }

  Future<void> loginWithFB(BuildContext context) async {
    try {
      // by default the login method has the next permissions ['email','public_profile']
      AccessToken accessToken = await FacebookAuth.instance.login();
      print(accessToken.toJson());
      // get the user data

      final userData = await FacebookAuth.instance.getUserData();
      print(userData['userId']);
    } on FacebookAuthException catch (e) {
      switch (e.errorCode) {
        case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
          print("You have a previous login operation in progress");
          break;
        case FacebookAuthErrorCode.CANCELLED:
          print("login cancelled");
          break;
        case FacebookAuthErrorCode.FAILED:
          print("login failed");
          break;
      }
    }
  }

  Future<void> logInWithApple(BuildContext context) async {
    try {
      if (await isAvailableFuture) {
        final result = await AppleSignIn.performRequests([
          AppleIdRequest(
            requestedScopes: [
              Scope.email,
              Scope.fullName,
            ],
          ),
        ]);
        switch (result.status) {
          case AuthorizationStatus.authorized:
            final appleIdCredential = result.credential;
            final oAuthProvider = OAuthProvider('apple.com');
            final credential = oAuthProvider.credential(
              idToken: String.fromCharCodes(appleIdCredential.identityToken),
              accessToken: String.fromCharCodes(appleIdCredential.authorizationCode),
            );
            print("ID token: " + credential.idToken);
            print("Access token: " + credential.accessToken);
            print("Provider ID: " + credential.providerId);
            print("Signin Method: " + credential.signInMethod);
            break;
          case AuthorizationStatus.error:
            throw PlatformException(
              code: 'ERROR_AUTHORIZATION_DENIED',
              message: result.error.toString(),
            );

          case AuthorizationStatus.cancelled:
            throw PlatformException(
              code: 'ERROR_ABORTED_BY_USER',
              message: 'Sign in aborted by user',
            );
          default:
            throw UnimplementedError();
        }
      }
    } catch (e) {
      print(e);
    }
  }
}

final socialSigninNotifier = ChangeNotifierProvider<SocialSigninNotifier>((ref) {
  return SocialSigninNotifier();
});
