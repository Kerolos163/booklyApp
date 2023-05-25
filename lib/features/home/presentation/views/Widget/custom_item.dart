import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

Widget ListViewItem(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .25,
    child: AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: MediaQuery.of(context).size.height * .25,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.amber,
            image:
                const DecorationImage(image: AssetImage(AssetData.testimage)),
            borderRadius: BorderRadius.circular(16)),
      ),
    ),
  );
}
