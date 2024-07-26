import 'package:tdd_tutorials/core/usecase/usecase.dart';
import 'package:tdd_tutorials/core/utils/typedef.dart';
import 'package:tdd_tutorials/src/authentication/domain/entities/user.dart';
import 'package:tdd_tutorials/src/authentication/domain/repositories/authentication_repository.dart';

class GetUsers extends UsecaseWithoutParams<List<User>>{
  const GetUsers(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResultFuture<List<User>> call() async => _repository.getUsers();
}