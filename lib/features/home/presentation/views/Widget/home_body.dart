import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'List_view.dart';
import 'best_seller_List_Item.dart';
import 'customappbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        BooklyListView(context),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text("Best Seller", style: Styles.textStyle18),
        ),
        const SizedBox(
          height: 20,
        ),
        BestSellerListViewItem(context)
      ],
    );
  }


}
