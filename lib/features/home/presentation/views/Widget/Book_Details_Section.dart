import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'Book_rating.dart';
import 'Books_Action.dart';
import 'custom_BooK_Image_item.dart';
import 'custom_Book_Details_AppBar.dart';

BookDetailsSection(context) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImage(context,img: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fe2.365dm.com%2F13%2F05%2F800x600%2F168311249_2941386.jpg%3F20130813223857&tbnid=Yw2gisYd9b_xJM&vet=12ahUKEwjRufWryub_AhUYmicCHQ1wANgQMygLegUIARDQAQ..i&imgrefurl=https%3A%2F%2Fwww.skysports.com%2Fcristiano-ronaldo&docid=XF72BTLrnu0HXM&w=800&h=600&q=cr7&ved=2ahUKEwjRufWryub_AhUYmicCHQ1wANgQMygLegUIARDQAQ"),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        // BookRating(MAA: MainAxisAlignment.center),
        const SizedBox(
          height: 37,
        ),
        BookAction(),
        const SizedBox(height: 50),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              textAlign: TextAlign.start,
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            )),
      ],
    ),
  );
}
