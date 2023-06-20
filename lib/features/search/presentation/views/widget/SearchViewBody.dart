import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Custom_Search_textFeild.dart';

class Search_View_Bpdy extends StatelessWidget {
  const Search_View_Bpdy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Custom_Search_TextField(),
        ],
      ),
    );
  }
}
