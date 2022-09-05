import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String subtitle;
  final EdgeInsets margin;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.subtitle,
    this.margin = EdgeInsets.zero,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              hintText: subtitle,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
