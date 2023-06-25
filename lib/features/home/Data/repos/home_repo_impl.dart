import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';

import 'package:bookly_app/core/errors/failures.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> FetchBestsellerBooks() {
    // TODO: implement FetchBestsellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> FetchFeatureBooks() {
    // TODO: implement FetchFeatureBooks
    throw UnimplementedError();
  }
}
