// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String nameInterest;
  const InterestItem({
    Key? key,
    required this.nameInterest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            nameInterest,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
