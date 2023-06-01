import 'package:flutter/material.dart';

import 'custom_BooK_Image_item.dart';


Widget BooklyListView(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CustomBookImage(context),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    ),
  );
}
