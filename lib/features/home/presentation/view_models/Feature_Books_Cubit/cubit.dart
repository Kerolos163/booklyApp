import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/presentation/view_models/Feature_Books_Cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Feature_Books_Cubit extends Cubit<Feature_Books_State> {
  Feature_Books_Cubit() : super(Feature_Books_initstate());
  static Feature_Books_Cubit get(context) => BlocProvider.of(context);
}
