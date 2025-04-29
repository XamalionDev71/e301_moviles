import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const String name = 'inifinite_screen';

  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InfiniteScroll')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text('#TeamSistemas');
        },
      ),
    );
  }
}
