// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../../home/Data/models/book_model/book_model.dart';

abstract class SearchState {}

class searchinitstate extends SearchState {}

class searchLoadingstate extends SearchState {}

class searchSuccessstate extends SearchState {
  List<BookModel> Books;
  searchSuccessstate({
    required this.Books,
  });
}

class searchFailurestate extends SearchState {
  final String error;
  searchFailurestate({
    required this.error,
  });
}
