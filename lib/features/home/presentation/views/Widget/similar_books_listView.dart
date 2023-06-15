import 'package:flutter/material.dart';

import 'custom_BooK_Image_item.dart';

SimilarBooksListview(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CustomBookImage(context),
        );
      },
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
    ),
  );
}
