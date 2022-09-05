// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/auth_cubit.dart';
import 'package:flutter_application_1/ui/widgets/destination_card.dart';
import 'package:flutter_application_1/ui/widgets/destination_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: 30,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Howdy,\n${state.user.name}',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semibold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Where to fly today?',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images_profile.png'),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }

  Widget popularDestination() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              namaDestinasi: 'Lake Ciliwung',
              kotaDestinasi: 'Tangerang',
              imageUrl: 'assets/image_destination1.png',
              ratingDestinasi: 4.8,
            ),
            DestinationCard(
              namaDestinasi: 'White Houses',
              kotaDestinasi: 'Spain',
              imageUrl: 'assets/image_destination2.png',
              ratingDestinasi: 4.8,
            ),
            DestinationCard(
              namaDestinasi: 'Hill Heyo',
              kotaDestinasi: 'Monaco',
              imageUrl: 'assets/image_destination3.png',
              ratingDestinasi: 3.2,
            ),
            DestinationCard(
              namaDestinasi: 'Menarra',
              kotaDestinasi: 'Japan',
              imageUrl: 'assets/image_destination4.png',
              ratingDestinasi: 4.1,
            ),
            DestinationCard(
              namaDestinasi: 'Payung Teduh',
              kotaDestinasi: 'Singapore',
              imageUrl: 'assets/image_destination5.png',
              ratingDestinasi: 4.5,
              margin: EdgeInsets.only(right: 24),
            ),
          ],
        ),
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semibold,
            ),
          ),
          DestinationTile(
            imageUrl: 'assets/image_destination6.png',
            namaDestinasi: 'Danau Beratan',
            lokasiDestinasi: 'Singaraja',
            ratingDestinasi: 4.5,
          ),
          DestinationTile(
            imageUrl: 'assets/image_destination7.png',
            namaDestinasi: 'Sydney Opera',
            lokasiDestinasi: 'Australia',
            ratingDestinasi: 4.7,
          ),
          DestinationTile(
            imageUrl: 'assets/image_destination8.png',
            namaDestinasi: 'Roma',
            lokasiDestinasi: 'Italy',
            ratingDestinasi: 4.8,
          ),
          DestinationTile(
            imageUrl: 'assets/image_destination9.png',
            namaDestinasi: 'Payung Teduh',
            lokasiDestinasi: 'Singapore',
            ratingDestinasi: 4.8,
          ),
          DestinationTile(
            imageUrl: 'assets/image_destination10.png',
            namaDestinasi: 'Hill Hey',
            lokasiDestinasi: 'Monaco',
            ratingDestinasi: 4.7,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
