

import 'package:bookly/features/home/presentation/manger/featured_book_cubit/featured_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewBlocBuilder extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
         if (state is FeaturedBooksSuccess) {
         return BestSellerListView(
          books: state.books,
         );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
       
      },
    );
  }
}
