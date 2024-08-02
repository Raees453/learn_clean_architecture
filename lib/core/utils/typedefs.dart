import 'package:dartz/dartz.dart';
import 'package:learn_flutter_clean_architecture/core/errors/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef Json = Map<String, dynamic>;
