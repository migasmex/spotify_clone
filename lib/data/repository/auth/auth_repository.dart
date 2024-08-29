import 'package:spotify_app/data/models/auth/user_request.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_app/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signIn() {
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(UserRequest userRequest) async {
    await sl<AuthFirebaseService>().signUp(userRequest);
  }
}
