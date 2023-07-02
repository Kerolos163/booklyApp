import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class searchrepo
{
  Future <Either<Failures,List<BookModel>>> FetachBooks();
}