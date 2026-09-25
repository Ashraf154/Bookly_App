import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.books});
  final List books;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(
              image: books[index].image??'',
            ),
          );
        },
      ),
    );
  }
}
