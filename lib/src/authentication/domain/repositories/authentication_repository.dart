import 'package:dartz/dartz.dart';
import 'package:tdd_tutorials/core/errors/failure.dart';
import 'package:tdd_tutorials/core/utils/typedef.dart';
import 'package:tdd_tutorials/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository{
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUsers();
}