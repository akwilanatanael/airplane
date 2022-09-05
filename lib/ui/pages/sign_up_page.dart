// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/auth_cubit.dart';
import 'package:flutter_application_1/ui/widgets/custom_button.dart';
import 'package:flutter_application_1/ui/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join Us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          subtitle: 'Your Full Name',
          controller: nameController,
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          subtitle: 'Your Email Address',
          controller: emailController,
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          subtitle: 'Your Password',
          obscureText: true,
          controller: passwordController,
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          subtitle: 'Your Hobby',
          controller: hobbyController,
          margin: EdgeInsets.only(bottom: 30),
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kRedColor,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return CustomButton(
              title: 'Get Started',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
                      hobby: hobbyController.text,
                    );
              },
            );
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
