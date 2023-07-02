import 'package:bookly_app/features/search/presentation/views/view_model/Search_cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Data/Search_repo.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.Search_repo) : super(searchinitstate());
  static SearchCubit get(context) => BlocProvider.of(context);
  final searchrepo Search_repo;
  Future<void> FetchBooks() async {
    emit(searchLoadingstate());
    var result = await Search_repo.FetachBooks();
    result.fold((Failures) {
      emit(searchFailurestate(error: Failures.errMessage));
    }, (Books) {
      emit(searchSuccessstate(Books: Books));
    });
  }
}
