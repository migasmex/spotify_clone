import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecase/usecase.dart';
import 'package:spotify_app/data/models/auth/user_request.dart';
import 'package:spotify_app/domain/repository/auth/auth.dart';
import 'package:spotify_app/service_locator.dart';

class SignupUseCase implements UseCase<Either, UserRequest> {
  @override
  Future<Either> call({UserRequest? params}) async {
    return sl<AuthRepository>().signUp(params!);
  }
}
