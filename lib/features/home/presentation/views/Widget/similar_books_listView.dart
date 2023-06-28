import 'package:flutter/material.dart';

import 'custom_BooK_Image_item.dart';

SimilarBooksListview(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CustomBookImage(context,img: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fe2.365dm.com%2F13%2F05%2F800x600%2F168311249_2941386.jpg%3F20130813223857&tbnid=Yw2gisYd9b_xJM&vet=12ahUKEwjRufWryub_AhUYmicCHQ1wANgQMygLegUIARDQAQ..i&imgrefurl=https%3A%2F%2Fwww.skysports.com%2Fcristiano-ronaldo&docid=XF72BTLrnu0HXM&w=800&h=600&q=cr7&ved=2ahUKEwjRufWryub_AhUYmicCHQ1wANgQMygLegUIARDQAQ"),
        );
      },
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
    ),
  );
}
