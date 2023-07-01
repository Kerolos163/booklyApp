import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_Button.dart';

Widget BookAction() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      children: [
        Expanded(
          child: Custom_Button(
              txt: "FREE",
              BackgroundColor: Colors.white,
              TextColor: Colors.black,
              BorderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
        ),
        Expanded(
          child: Custom_Button(
              txt: "Preview",
              fontsize: 16,
              BackgroundColor: const Color(0xffEF8262),
              TextColor: Colors.white,
              BorderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
        ),
      ],
    ),
  );
}
