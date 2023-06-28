import 'package:bookly_app/core/widget/Custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_Loading_Indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/Feature_Books_Cubit/cubit.dart';
import '../../view_models/Feature_Books_Cubit/state.dart';
import 'custom_BooK_Image_item.dart';

Widget BooklyListView(context) {
  return BlocBuilder<Feature_Books_Cubit, Feature_Books_State>(
    builder: (context, state) {
      if (state is FeatureBooksSuccessState) {
        return Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomBookImage(context,img: state.Books[index].volumeInfo.imageLinks!.thumbnail as String ),
                );
              },
              itemCount: state.Books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        );
      } else if (state is FeatureBooksFailureState) {
        return Error_Widget(Message: state.error);
      } else {
        return CustomLoadingIndicator();
      }
    },
  );
}
