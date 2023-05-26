import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

Widget ListViewItem(context) {
  return AspectRatio(
    aspectRatio: 2.7 / 4,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.amber,
          image: const DecorationImage(image: AssetImage(AssetData.testimage)),
          borderRadius: BorderRadius.circular(16)),
    ),
  );
}
