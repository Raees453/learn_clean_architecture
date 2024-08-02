import 'package:learn_flutter_clean_architecture/core/usecase/usecases.dart';
import 'package:learn_flutter_clean_architecture/core/utils/typedefs.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/repo/on_boarding_repo.dart';

class CheckIfUserIsFirstTimer extends UseCaseWithoutParams<bool> {
  const CheckIfUserIsFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<bool> call() async => _repo.checkIfFirstTimer();
}
