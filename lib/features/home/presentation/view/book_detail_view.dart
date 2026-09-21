
import 'package:bookly/features/home/presentation/view/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailViewBody(),
    );
  }
} 