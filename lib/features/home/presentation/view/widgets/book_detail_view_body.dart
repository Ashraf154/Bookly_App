
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
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
          SizedBox(height: 43,),
           Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
             SizedBox(height: 6,),
             Opacity(
              opacity: .7,
               child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
               ),),
             ),
               SizedBox(height: 18,),
             BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
             ),
        ],
      ),
    );
  }
}

