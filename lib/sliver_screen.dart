import 'dart:math';

import 'package:flutter/material.dart';

class SliverScreen extends StatefulWidget {
  const SliverScreen({super.key});

  @override
  State<SliverScreen> createState() => _SliverScreenState();
}

class _SliverScreenState extends State<SliverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Sliver List and Grid'),
          ),
          SliverList.builder(
            itemCount: 5,
            itemBuilder: (_, index) {
              return Container(
                height: 80,
                color: _randomColor,
              );
            },
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10,
            itemBuilder: (_, index) {
              return Container(color: _randomColor);
            },
          ),
        ],
      ),
    );
  }

  Color get _randomColor {
    final Random random = Random();

    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}
