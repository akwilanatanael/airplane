// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/choose_seat_page.dart';
import 'package:flutter_application_1/ui/widgets/custom_button.dart';
import 'package:flutter_application_1/ui/widgets/interest_item.dart';
import 'package:flutter_application_1/ui/widgets/photo_item.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget contentDetailPage() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            // NOTE: EMBLEM
            Container(
              width: 100,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),
            //Note: TITLE
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semibold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.5',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //NOTE DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      PhotoItem(imageUrl: 'assets/image_photo1.png'),
                      PhotoItem(imageUrl: 'assets/image_photo2.png'),
                      PhotoItem(imageUrl: 'assets/image_photo3.png'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Interest',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      InterestItem(nameInterest: 'Kids Park'),
                      InterestItem(nameInterest: 'Honor Bridge'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      InterestItem(nameInterest: 'City Museum'),
                      InterestItem(nameInterest: 'Central Mall'),
                    ],
                  ),
                ],
              ),
            ),
            // HARGA dan Tombol Book Now
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseSeatPage(),
                        ),
                      );
                    },
                    width: 170,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            contentDetailPage(),
          ],
        ),
      ),
    );
  }
}

/*Widget contentDetailPage() {
    return Container(
      margin: EdgeInsets.only(
        top: 330,
        left: defaultMargin,
        bottom: 30,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lake Ciliwung',
                style: whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              Text(
                'Tangerang',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(right: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_star.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }*/
