import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/user_request.dart';

abstract class AuthFirebaseService {
  Future<void> signUp(UserRequest userRequest);

  Future<void> signIn();
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(UserRequest userRequest) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userRequest.email,
        password: userRequest.password,
      );
    } on FirebaseAuthException catch (e) {}
  }
}
