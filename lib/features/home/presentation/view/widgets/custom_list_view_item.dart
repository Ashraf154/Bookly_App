import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        width: 50,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
