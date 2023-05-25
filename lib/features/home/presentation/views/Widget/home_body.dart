import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_item.dart';
import 'customappbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(), BooklyListView(context)],
    );
  }

  Widget BooklyListView(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListViewItem(context),
            );
          },
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
