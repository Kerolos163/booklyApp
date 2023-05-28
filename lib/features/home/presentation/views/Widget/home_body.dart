import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'List_view.dart';
import 'custom_item.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text("Best Seller", style: Styles.textStyle18),
        ),
        BestSellerListViewItem()
      ],
    );
  }

  BestSellerListViewItem() {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  image: const DecorationImage(
                      image: AssetImage(AssetData.testimage)),
                  borderRadius: BorderRadius.circular(8)),
            ),
          )
        ],
      ),
    );
  }
}
