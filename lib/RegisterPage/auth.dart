import 'package:firebase_auth/firebase_auth.dart';

import 'register_page.dart';

class SignInSignUpResult {
  final FirebaseUser user;
  final String message;


  SignInSignUpResult({this.user, this.message});
}

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print(e.toString());

      return null;
    }
  }

  static Future<SignInSignUpResult> createUser({String name, String email, String pass}) async {
    try {
      AuthResult result = await
      _auth.createUserWithEmailAndPassword(email: email, password: pass);
      FirebaseUser firebaseUser = result.user;
      UserUpdateInfo updateInfo = UserUpdateInfo();
      updateInfo.displayName = name;
      await firebaseUser.updateProfile(updateInfo);
      await firebaseUser.reload();
      return SignInSignUpResult(user: result.user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }

  static Future<SignInSignUpResult> signInWithEmail({String email, String pass}) async {
    try {
      AuthResult result = await
      _auth.signInWithEmailAndPassword(email: email, password: pass);
      return SignInSignUpResult(user: result.user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }


  static Future<FirebaseUser> signUp(String name, String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      UserUpdateInfo updateInfo = UserUpdateInfo();
      updateInfo.displayName = name;
      await firebaseUser.updateProfile(updateInfo);
      await firebaseUser.reload();

      return firebaseUser;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;

      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  static Future<void> signOut() async{
    _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream =>
      _auth.onAuthStateChanged;
}