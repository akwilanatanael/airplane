// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int statusSeat;
  const SeatItem({
    Key? key,
    required this.statusSeat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (statusSeat) {
        case 0:
          return kSecondaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kGrey1Color;
        default:
          return kGrey1Color;
      }
    }

    borderColor() {
      switch (statusSeat) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kGrey1Color;
        default:
          return kGrey1Color;
      }
    }

    child() {
      switch (statusSeat) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 14,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor(),
        border: Border.all(
          width: 3,
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
