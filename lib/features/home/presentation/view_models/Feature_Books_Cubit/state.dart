// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';

abstract class Feature_Books_State {}

class Feature_Books_initstate extends Feature_Books_State {}

class FeatureBooksLoadingState extends Feature_Books_State {}

class FeatureBooksSuccessState extends Feature_Books_State {
  List<BookModel> Books;
  FeatureBooksSuccessState({
    required this.Books,
  });
}

class FeatureBooksFailureState extends Feature_Books_State {
  String error;
  FeatureBooksFailureState({
    required this.error,
  });
}
