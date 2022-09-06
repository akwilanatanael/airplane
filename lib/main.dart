// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/auth_cubit.dart';
import 'package:flutter_application_1/cubit/destination_cubit.dart';
import 'package:flutter_application_1/cubit/page_cubit.dart';
import 'package:flutter_application_1/cubit/seat_cubit.dart';
import 'package:flutter_application_1/cubit/transaction_cubit.dart';
import 'package:flutter_application_1/models/destination_model.dart';
import 'package:flutter_application_1/ui/pages/bonus_page.dart';
import 'package:flutter_application_1/ui/pages/choose_seat_page.dart';
import 'package:flutter_application_1/ui/pages/get_started_page.dart';
import 'package:flutter_application_1/ui/pages/main_page.dart';
import 'package:flutter_application_1/ui/pages/sign_in_page.dart';
import 'package:flutter_application_1/ui/pages/sign_up_page.dart';
import 'package:flutter_application_1/ui/pages/success_checkout_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashPage(),
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/success': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
