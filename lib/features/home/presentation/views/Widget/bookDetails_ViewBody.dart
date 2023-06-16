import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widget/custom_Button.dart';
import 'package:bookly_app/features/home/presentation/views/Widget/similar_books_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Book_Details_Section.dart';
import 'Book_rating.dart';
import 'Books_Action.dart';
import 'best_seller_List_Item.dart';
import 'custom_BooK_Image_item.dart';
import 'custom_Book_Details_AppBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            BookDetailsSection(context),
            const SizedBox(height: 16),
            SimilarBooksListview(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
