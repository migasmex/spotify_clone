import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';
import 'package:spotify_app/data/models/auth/user_request.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_app/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signIn(SigninUserRequest signinUserRequest) async {
    return await sl<AuthFirebaseService>().signIn(signinUserRequest);
  }

  @override
  Future<Either> signUp(UserRequest userRequest) async {
    return await sl<AuthFirebaseService>().signUp(userRequest);
  }
}
