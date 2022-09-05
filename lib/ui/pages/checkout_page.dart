// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/success_checkout_page.dart';
import 'package:flutter_application_1/ui/widgets/booking_detail_item.dart';
import 'package:flutter_application_1/ui/widgets/custom_button.dart';
import 'package:flutter_application_1/ui/widgets/interest_item.dart';
import '../../shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget routeImage() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget checkoutDetail() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                      image: AssetImage('assets/image_destination1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 1),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Booking Details',
                  style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
                ),
              ],
            ),
            BookingDetailItem(
              title: 'Traveler',
              valueTitle: '2 person',
              colorValue: kBlackColor,
              margin: EdgeInsets.only(top: 10),
            ),
            BookingDetailItem(
              title: 'Seat',
              valueTitle: 'A3, B3',
              colorValue: kBlackColor,
              margin: EdgeInsets.only(top: 16),
            ),
            BookingDetailItem(
              title: 'Insurance',
              valueTitle: 'YES',
              colorValue: kGreenColor,
              margin: EdgeInsets.only(top: 16),
            ),
            BookingDetailItem(
              title: 'Refundable',
              valueTitle: 'NO',
              colorValue: kRedColor,
              margin: EdgeInsets.only(top: 16),
            ),
            BookingDetailItem(
              title: 'VAT',
              valueTitle: '45%',
              colorValue: kBlackColor,
              margin: EdgeInsets.only(top: 16),
            ),
            BookingDetailItem(
              title: 'Price',
              valueTitle: 'IDR 8.500.690',
              colorValue: kBlackColor,
              margin: EdgeInsets.only(top: 16),
            ),
            BookingDetailItem(
              title: 'Grand Total',
              valueTitle: 'IDR 12.000.000',
              colorValue: kPrimaryColor,
              margin: EdgeInsets.only(top: 16),
            ),
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Text(
                'Payment Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_card.png'),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_plane.png'),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonPayNow() {
      return CustomButton(
        title: 'Pay Now',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessCheckoutPage(),
            ),
          );
        },
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          routeImage(),
          checkoutDetail(),
          paymentDetail(),
          buttonPayNow(),
          tacButton(),
        ],
      ),
    );
  }
}
