
import 'package:bookly/features/home/presentation/view/widgets/custom_book_detail_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 106),
            child: FeatureListViewItem(),
          ),
        ],
      ),
    );
  }
}

