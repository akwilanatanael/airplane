// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String namaDestinasi;
  final String kotaDestinasi;
  final double ratingDestinasi;
  final String imageUrl;
  final EdgeInsets margin;

  const DestinationCard({
    Key? key,
    required this.namaDestinasi,
    required this.kotaDestinasi,
    required this.imageUrl,
    this.ratingDestinasi = 0.0,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 323,
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: margin.right,
              ),
              padding: EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180,
                    height: 220,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultRadius),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              margin: EdgeInsets.only(right: 2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/icon_star.png'),
                                ),
                              ),
                            ),
                            Text(
                              ratingDestinasi.toString(),
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namaDestinasi,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          kotaDestinasi,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
