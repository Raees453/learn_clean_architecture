import 'package:learn_flutter_clean_architecture/core/utils/typedefs.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/data/repos/datasources/on_boarding_local_data_source.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/domain/repo/on_boarding_repo.dart';

class OnBoardingRepoImpl implements OnBoardingRepo {
  const OnBoardingRepoImpl(this._dataSource);

  final OnBoardingLocalDataSource _dataSource;

  @override
  ResultFuture<void> cacheFirstTimer() async {
    throw UnimplementedError();
  }

  @override
  ResultFuture<bool> checkIfFirstTimer() async {
    throw UnimplementedError();
  }
}
