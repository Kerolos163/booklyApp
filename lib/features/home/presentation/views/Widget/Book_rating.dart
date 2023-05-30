import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

BookRating() {
  return Padding(
    padding: const EdgeInsets.only(right: 40),
    child: Row(
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    ),
  );
}
