import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

Widget CustomBookImage(context, {required String img}) {
  return AspectRatio(
    aspectRatio: 2.6 / 4,
    child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(img),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16)),
    ),
  );
}
