import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/Data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_models/Newest_Books_Cubit/cubit.dart';
import 'package:bookly_app/features/splash/presentation/Views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/app_router.dart';
import 'features/home/presentation/view_models/Feature_Books_Cubit/cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SetupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => Feature_Books_Cubit(
            getIt.get<HomeRepoImpl>(),
          )..FetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => Newest_Books_Cubit(
            getIt.get<HomeRepoImpl>(),
          )..FetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Kprimarycolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
