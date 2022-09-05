// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String valueTitle;
  final Color colorValue;
  final EdgeInsets margin;

  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.valueTitle,
    required this.colorValue,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
            ),
          ),
          Spacer(),
          Text(
            valueTitle,
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              color: colorValue,
            ),
          ),
        ],
      ),
    );
  }
}
