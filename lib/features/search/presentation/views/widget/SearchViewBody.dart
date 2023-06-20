import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/Widget/best_seller_List_Item.dart';
import 'Custom_Search_textFeild.dart';

class Search_View_Bpdy extends StatelessWidget {
  const Search_View_Bpdy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Custom_Search_TextField(),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text("Best Seller", style: Styles.textStyle18),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(child: Search_ListView())
      ],
    );
  }

  Search_ListView() {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(context),
        );
      },
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
    );
  }
}
