import 'package:learn_flutter_clean_architecture/core/utils/typedefs.dart';

abstract class UseCaseWithoutParams<Type> {
  const UseCaseWithoutParams();

  ResultFuture<Type> call();
}

abstract class UseCaseWithParams<Type, Params> {
  const UseCaseWithParams();

  ResultFuture<Type> call(Params params);
}
