import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/manger/featured_book_cubit/featured_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view_item_bloc_builder.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/feature_book_list_view_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_book_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

class HomeViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(),

          FeaturedBooksListViewBlocBuilder(),

          SizedBox(height: 50),

          Text('Best Seller', style: Styles.textStyle18),
          SizedBox(height: 20),

          BestSellerListViewBlocBuilder(),
        ],
      ),
    );
  }
}

