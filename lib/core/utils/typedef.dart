import 'package:dartz/dartz.dart';
import 'package:tdd_tutorials/core/errors/failure.dart';
import 'package:tdd_tutorials/src/authentication/domain/entities/user.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef ResultVoid = Future<Either<Failure, void>>;