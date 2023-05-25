import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

Widget CustomAppBar() {
  return Padding(
    padding: const EdgeInsets.only(left: 24,right: 24, top: 50,bottom: 15),
    child: Row(
      children: [
        Image.asset(AssetData.logo, height: 20),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
        )
      ],
    ),
  );
}
