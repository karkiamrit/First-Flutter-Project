//What does the class depend on (eg constructor)
//Answer -- Authentication Repository
//How can we create a fake version of the dependency (if we we use http get we mimic rather than using actual http while testing)
//Answer -- Use Mocktail
//MockTail and Mockito - can be used , MockTail is simpler
//How do we control what our dependencies do
//Answer -- Using the Mocktail's APIs

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorials/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd_tutorials/src/authentication/domain/usecases/create_user.dart';

import 'authentication_repository.mock.dart';


void main() {
  late CreateUser usecase;
  late AuthenticationRepository repository;
  setUp(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });
  const params = CreateUserParams.empty();
  test(
    'should call the function [AuthRepo.createUser]',
    () async {
      //Arrange
      when(() => repository.createUser(
                createdAt: any(named: 'createdAt'),
                name: any(named: 'name'),
                avatar: any(named: 'avatar'),
              ))
          .thenAnswer((_) async => const Right(
              null)); //then answer for async then return for non async (put null for void in right)

      //Act
      final result = await usecase(params);

      //Assert
      expect(result, equals(const Right<dynamic, void>(null)));
      verify(() => repository.createUser(
          createdAt: params.createdAt,
          name: params.name,
          avatar: params.avatar)).called(1);
      verifyNoMoreInteractions(repository);

    },
  );
}
