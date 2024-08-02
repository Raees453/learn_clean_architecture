import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/repo/on_boarding_repo.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/usecases/check_if_user_is_first_timer.dart';
import 'package:mocktail/mocktail.dart';

import 'on_boarding_repo.mock.dart';

void main() {
  late OnBoardingRepo repo;
  late CheckIfUserIsFirstTimer useCase;

  setUp(() {
    repo = MockOnBoardingRepo();
    useCase = CheckIfUserIsFirstTimer(repo);
  });

  test(
    'should call the [onBoardingRepo.checkIfUserIsFirstTimer] & return the right',
    () async {
      when(() => repo.checkIfFirstTimer()).thenAnswer(
        (_) async => const Right(true),
      );

      final result = await useCase();

      expect(result, equals(const Right<bool, dynamic>(true)));

      verify(() => repo.checkIfFirstTimer()).called(1);
      verifyNoMoreInteractions(repo);
    },
  );
}
