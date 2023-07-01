import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> FetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> FetchFeatureBooks();
  Future<Either<Failures, List<BookModel>>> FetchSimilarBooks({required String category});
}
