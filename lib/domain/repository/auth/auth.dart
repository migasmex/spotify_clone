import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';
import 'package:spotify_app/data/models/auth/user_request.dart';

abstract class AuthRepository {
  Future<Either> signUp(UserRequest userRequest);

  Future<Either> signIn(SigninUserRequest signinUserRequest);
}
