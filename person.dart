import 'dart:io';

import 'object.dart';

extension Validaitor on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool isValidPhone() {
    return RegExp(r'((\+20)|0)[.\- ]?[0-9][.\- ]?[0-9][.\- ]?[0-9]')
        .hasMatch(this);
  }

  bool isValidid() {
    return RegExp(r'[0-9]{14}$').hasMatch(this);
  }
}

abstract class Person extends Objects{
  int? _phone;
  int? _id;
  String? _name;
  late String _email;
  String? _address;

  set phone(int? value) {
    value.toString().isValidPhone() ? _phone = value : Exception('Phone Error');
  }

  int? get phone => _phone;
  set id(int? value) {
    value.toString().isValidid() ? _id = value : Exception('id Error');
  }

  int? get id => _id;

  set name(String? value) => _name = value;

  String? get name => _name;

  set email(String value) {
    value.isValidEmail() ? _email = value : Exception('Email Error');
  }

  String get email => _email;
  set address(String? value) => _address = value;

  String? get address => _address;
  void info() {
    print('please fill in Ur information\n');
    stdout.write('What\'s Ur Name\n');
    name = stdin.readLineSync()!;
    stdout.write('Write Ur id\n');
    id = int.parse(stdin.readLineSync()!);
    stdout.write('Tell us Ur Phone Number\n');
    phone = int.parse(stdin.readLineSync()!);
    stdout.write('Tell us Ur Email\n');
    email = stdin.readLineSync()!;
  }
}
