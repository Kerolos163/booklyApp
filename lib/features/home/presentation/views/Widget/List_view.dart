import 'package:flutter/material.dart';

import 'custom_item.dart';

Widget BooklyListView(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListViewItem(context),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    ),
  );
}
