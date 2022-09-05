// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/checkout_page.dart';
import 'package:flutter_application_1/ui/widgets/custom_button.dart';
import 'package:flutter_application_1/ui/widgets/seat_item.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '  ',
                      style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(statusSeat: 2),
                  SeatItem(statusSeat: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                      ),
                    ),
                  ),
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 2),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                      ),
                    ),
                  ),
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 2),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(statusSeat: 1),
                  SeatItem(statusSeat: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                      ),
                    ),
                  ),
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 0),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                      ),
                    ),
                  ),
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 0),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(statusSeat: 0),
                  SeatItem(statusSeat: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                      ),
                    ),
                  ),
                  SeatItem(statusSeat: 2),
                  SeatItem(statusSeat: 0),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Seat',
                        style: greyTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'A3, B3',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'IDR 540.000.000',
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonCheckout() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(top: 30, bottom: 46),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          buttonCheckout(),
        ],
      ),
    );
  }
}
