import 'package:fruit_hub/core/utils/assets.dart';

class OnboardingModel {
  final String bgImage;
  final String image;
  final String title;
  final String textSpan1;
  final String textSpan2;
  final String subTitle;

  const OnboardingModel({
    required this.bgImage,
    required this.image,
    required this.title,
    required this.subTitle,
    this.textSpan1 = '',
    this.textSpan2 = '',
  });

  static final List<OnboardingModel> onboardingList = [
    const OnboardingModel(
      bgImage: Assets.imagesPageViewItemBg1,
      image: Assets.imagesPageViewItemImage1,
      title: 'مرحبًا بك في ',
      textSpan1: 'Fruit',
      textSpan2: 'HUB',
      subTitle:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف\n مجموعتنا الواسعة من الفواكه الطازجة الممتازة\n واحصل على أفضل العروض والجودة العالية.',
    ),
    const OnboardingModel(
      bgImage: Assets.imagesPageViewItemBg2,
      image: Assets.imagesPageViewItemImage2,
      title: 'ابحث وتسوق',
      subTitle:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على\n التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة\n المثالية',
    ),
  ];
}
