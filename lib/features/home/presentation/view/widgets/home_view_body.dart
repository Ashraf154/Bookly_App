import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
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
      
       BestSellerListViewItem(),
       
       ]),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
           AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          width: 50,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
      Column(
        children: [

        ],
      ),
        ],
      ),
    );
  }
}


