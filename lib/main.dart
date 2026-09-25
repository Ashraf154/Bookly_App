import 'package:bookly/core/routing/router_generator.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/functions/setup_service_locator.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/manger/featured_book_cubit/featured_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/manger/newest_books_Cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/use%20case/fetch_featured_books_use_case.dart';
import 'package:bookly/features/home/use%20case/fetch_newest_book_use_case.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() {
  runApp(const BooklyApp());
  Hive.initFlutter();
  // get it step 2
  setUpServiceLocator();
  Hive.registerAdapter(BookEntityAdapter());
  Hive.openBox(Constants.kFeaturedBox);
  Hive.openBox(Constants.kNewestBox);
}



// get it step 1
final getIt = GetIt.instance;

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                // get it step 3
               getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
          BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                // get it step 3
               getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RouterGenerator.mainRoutingInOurApp,

        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Constants.kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
