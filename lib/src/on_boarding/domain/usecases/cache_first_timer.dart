import 'package:learn_flutter_clean_architecture/core/usecase/usecases.dart';
import 'package:learn_flutter_clean_architecture/core/utils/typedefs.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/repo/on_boarding_repo.dart';

class CacheFirstTimer extends UseCaseWithoutParams<void> {
  CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<void> call() async => _repo.cacheFirstTimer();
}
