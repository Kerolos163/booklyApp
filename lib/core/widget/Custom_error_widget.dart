// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/styles.dart';

Error_Widget({required String Message}) {
  return Center(
    child: Text(
      Message,
      style: Styles.textStyle20,
    ),
  );
}

