import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_clean_architecture/core/errors/failures.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/repo/on_boarding_repo.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/usecases/cache_first_timer.dart';
import 'package:mocktail/mocktail.dart';

import 'on_boarding_repo.mock.dart';

void main() {
  late OnBoardingRepo repo;
  late CacheFirstTimer useCase;

  setUp(() {
    repo = MockOnBoardingRepo();
    useCase = CacheFirstTimer(repo);
  });

  test(
    'should call the [onBoardingRepo.cacheFirstTimer] and return the right data',
    () async {
      when(() => repo.cacheFirstTimer()).thenAnswer(
        (_) async => const Left<Failure, dynamic>(
          ServerFailure(message: 'Unknown Server Failure', statusCode: 500),
        ),
      );

      final result = await useCase();

      expect(
        result,
        equals(
          const Left<Failure, dynamic>(
            ServerFailure(message: 'Unknown Server Failure', statusCode: 500),
          ),
        ),
      );

      verify(() => repo.cacheFirstTimer()).called(1);
      verifyNoMoreInteractions(repo);
    },
  );
}
