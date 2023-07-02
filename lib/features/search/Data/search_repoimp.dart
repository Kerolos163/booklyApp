// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/Data/Search_repo.dart';
import 'package:dio/dio.dart';

class searchrepoImp implements searchrepo {
  final ApiService api;
  searchrepoImp({
    required this.api,
  });

  @override
  Future<Either<Failures, List<BookModel>>> FetachBooks() async {
    try {
      var NewestData = await api.get(
          end_point:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=Computer Science");

      List<BookModel> Books = [];
      for (var item in NewestData["items"]) {
        Books.add(BookModel.fromJson(item));
      }

      var FeatureData = await api.get(
          end_point:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=Computer Science");
      for (var item in FeatureData["items"]) {
        Books.add(BookModel.fromJson(item));
      }
      print("Number Of Book ${Books.length}");
      return right(Books);
    } catch (e) {
      print("Error");
      if (e is DioException) {
        return left(FailuresServer.fromDioExceptio(e));
      }
      return left(FailuresServer(e.toString()));
    }
  }
}
