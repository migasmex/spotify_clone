import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';
import 'package:spotify_app/data/models/auth/user_request.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(UserRequest userRequest);

  Future<Either> signIn(SigninUserRequest signinUserRequest);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signIn(SigninUserRequest signinUserRequest) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signinUserRequest.email,
        password: signinUserRequest.password,
      );

      return Right("Successfully");
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == "invalid-email") {
        message = "Wrong email";
      } else if (e.code == "invalid-credential") {
        message = "Wrong password";
      }

      return Left(message);
    }
  }

  @override
  Future<Either> signUp(UserRequest userRequest) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userRequest.email,
        password: userRequest.password,
      );

      return Right("Successfully");
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == "weak-password") {
        message = "The password is too weak";
      } else if (e.code == "email-already-in-use") {
        message = "An account already exists with that email";
      }

      return Left(message);
    }
  }
}
