import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widget/custom_Button.dart';
import 'package:bookly_app/features/home/presentation/views/Widget/similar_books_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Book_rating.dart';
import 'Books_Action.dart';
import 'best_seller_List_Item.dart';
import 'custom_BooK_Image_item.dart';
import 'custom_Book_Details_AppBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .18),
                    child: CustomBookImage(context),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "The Jungle Book",
                    style: Styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      "Rudyard Kipling",
                      style: Styles.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  BookRating(MAA: MainAxisAlignment.center),
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
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w600),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SimilarBooksListview(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
