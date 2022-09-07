// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/transaction_model.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:intl/intl.dart';
import 'booking_detail_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transactions;
  const TransactionCard(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    image: NetworkImage(
                      transactions.destination.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      transactions.destination.city,
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
                    transactions.destination.rating.toString(),
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
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
              ),
            ],
          ),
          BookingDetailItem(
            title: 'Traveler',
            valueTitle: '${transactions.amountOfTraveler} person',
            colorValue: kBlackColor,
            margin: EdgeInsets.only(top: 10),
          ),
          BookingDetailItem(
            title: 'Seat',
            valueTitle: transactions.selectedSeat,
            colorValue: kBlackColor,
            margin: EdgeInsets.only(top: 16),
          ),
          BookingDetailItem(
            title: 'Insurance',
            valueTitle: transactions.insurance ? 'YES' : 'NO',
            colorValue: transactions.insurance ? kGreenColor : kRedColor,
            margin: EdgeInsets.only(top: 16),
          ),
          BookingDetailItem(
            title: 'Refundable',
            valueTitle: transactions.refundable ? 'YES' : 'NO',
            colorValue: transactions.refundable ? kGreenColor : kRedColor,
            margin: EdgeInsets.only(top: 16),
          ),
          BookingDetailItem(
            title: 'VAT',
            valueTitle: '${(transactions.vat * 100).toStringAsFixed(0)}%',
            colorValue: kBlackColor,
            margin: EdgeInsets.only(top: 16),
          ),
          BookingDetailItem(
            title: 'Price',
            valueTitle: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR',
              decimalDigits: 0,
            ).format(transactions.price),
            colorValue: kBlackColor,
            margin: EdgeInsets.only(top: 16),
          ),
          BookingDetailItem(
            title: 'Grand Total',
            valueTitle: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR',
              decimalDigits: 0,
            ).format(transactions.grandTotal),
            colorValue: kPrimaryColor,
            margin: EdgeInsets.only(top: 16),
          ),
        ],
      ),
    );
  }
}
