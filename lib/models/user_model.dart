// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.hobby = '',
    this.balance = 0,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}
