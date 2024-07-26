import 'package:tdd_tutorials/core/utils/typedef.dart';

// Type means return type and params the arguments
abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();
  ResultFuture<Type> call(
      Params params); // to make instance of a class callable in fxn case
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();
  ResultFuture<Type> call();
}
