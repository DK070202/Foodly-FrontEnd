class IntroData {
  const IntroData({
    required this.title,
    required this.subTittle,
    required this.illustration,
  });

  final String title;
  final String subTittle;
  final String illustration;

  static const introData = [
    IntroData(
        title: 'All your favorites',
        subTittle:
            'Order from the best local restaurants\nwith easy, on-demand delivery.',
        illustration: 'asset/images/Intro/Illustration.svg'),
    IntroData(
        title: 'Free delivery offers',
        subTittle:
            'Free delivery for new customers via Apple\nPay and others payment methods.',
        illustration: 'asset/images/Intro/Illustration1.svg'),
    IntroData(
        title: 'Choose your food',
        subTittle:
            'Easily find your type of food craving and\nyou’ll get delivery in wide range.',
        illustration: 'asset/images/Intro/Illustration2.svg'),
  ];
}
