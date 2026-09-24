import 'package:bookly/core/routing/router_generator.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() {
  runApp(const BooklyApp());
  Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  Hive.openBox(Constants.kFeaturedBox);
    Hive.openBox(Constants.kNewestBox);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterGenerator.mainRoutingInOurApp,

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Constants.kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
