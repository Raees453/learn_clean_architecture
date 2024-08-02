import 'package:equatable/equatable.dart';
import 'package:learn_flutter_clean_architecture/core/res/assets.gen.dart';

class PageContent extends Equatable {
  const PageContent({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  factory PageContent.first() => PageContent(
        title: 'Page 1',
        subTitle: 'Page 1 SubTitle',
        image: Assets.vectors.casualReading.path,
      );

  factory PageContent.second() => PageContent(
        title: 'Page 2',
        subTitle: 'Page 2 SubTitle',
        image: Assets.vectors.casualReading.path,
      );

  factory PageContent.third() => PageContent(
        title: 'Page 3',
        subTitle: 'Page 3 SubTitle',
        image: Assets.vectors.casualReading.path,
      );

  final String title;
  final String subTitle;
  final String image;

  @override
  List<Object?> get props => [title, subTitle, image];
}
