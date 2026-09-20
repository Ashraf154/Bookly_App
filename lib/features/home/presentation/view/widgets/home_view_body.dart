import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/feature_book_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        CustomAppBar(),
       
       FeatureBooksListView(),
      
       SizedBox(height: 50,),
      
       Text('Best Seller',
       style: Styles.textStyle18,
       ),
        SizedBox(height: 20,),
      
       BestSellerListViewItem(),
       
       ]),
    );
  }
}



