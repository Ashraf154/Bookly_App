import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/feature_book_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppBar(),
     
     FeatureBooksListView(),

     SizedBox(height: 50,),

     Text('Best Seller',style: Styles.titleMedium,),
     
     ]);
  }
}


