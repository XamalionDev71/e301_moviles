import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Sit cillum nostrud tempor amet nostrud consectetur nostrud in mollit velit exercitation.',
    'assets/1.png',
  ),
  SlideInfo(
    'Entrega rápida',
    'Velit officia voluptate eiusmod sunt esse laborum velit culpa proident sint fugiat eiusmod velit esse.',
    'assets/2.png',
  ),
  SlideInfo(
    'Disfruta la comida',
    'Officia sint aute eu aliquip veniam Lorem mollit cupidatat minim Lorem.',
    'assets/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: slides.map(
            (slideData) => _Slide(
              title: slideData.title,
              caption: slideData.caption,
              imageUrl: slideData.imageUrl
            ),
          ).toList(),
      )
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
