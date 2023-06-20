import 'package:flutter/material.dart';

import 'best_seller_List_Item.dart';

BestSellerListView() {
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
