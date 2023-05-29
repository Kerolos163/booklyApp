
  import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

BestSellerListViewItem(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
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
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      style: Styles.textStyle20.copyWith(
                        fontFamily: KGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("19.99 €",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }