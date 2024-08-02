import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/data/repos/datasources/on_boarding_local_data_source.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/data/repos/on_boarding_repo_impl.dart';
import 'package:mocktail/mocktail.dart';

class MockOnBoardingLocalDataSource extends Mock implements OnBoardingLocalDataSource {}

void main() {
  late OnBoardingLocalDataSource localDataSource;
  late OnBoardingRepoImpl repo;

  setUp(() {
    localDataSource = MockOnBoardingLocalDataSource();
    repo = OnBoardingRepoImpl(localDataSource);
  });
}
