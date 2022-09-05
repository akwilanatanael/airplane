// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 212),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_success.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    'Well Booked 😍',
                    style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Are you ready to explore the new\nworld of experiences?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  CustomButton(
                    title: 'My Bookings',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
                    },
                    width: 220,
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
