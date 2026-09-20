


import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: Colors.amber,),
        SizedBox(width: 6.3,),
        Text('4.8',style: Styles.textStyle16,),
          SizedBox(width: 5,),
         Text('(224)',style: Styles.textStyle14.copyWith(color: Color(0xff707070)),),

      ],
    );
  }
}