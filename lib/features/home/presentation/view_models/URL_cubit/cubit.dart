import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Data/repos/home_repo.dart';
import 'state.dart';

class URLCubit extends Cubit<URL_State> {
  URLCubit() : super(URLinitstate());
  static URLCubit get(context) => BlocProvider.of(context);

  got_TO_URL({required url}) async {
    emit(URLLoadingState());
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    emit(URLSuccessState());
    }
    else
    {
      emit(URLFailureState(error: "There Are Problem With Your URL"));
    }
  }
}
