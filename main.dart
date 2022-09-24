// import 'customer.dart';
import 'dart:core';
import 'dart:io';

import 'Seller.dart';
import 'ShowRoom.dart';
import 'customer.dart';

main() {
  Seller V = Seller();
  Buyer B = Buyer();
  Showroom S = Showroom();
  print('Welcome Are U Seller or a Buyer Something?');
  String ans = stdin.readLineSync()!.toUpperCase();
  switch (ans) {
    case 'SELLER':
      V.Details();
      break;
    case 'BUYER':
      B.Res();
      break;
    default:
      print('View ShowRoom?');
      String anss = stdin.readLineSync()!.toUpperCase();
      switch (anss) {
        case 'YES':
          S.View();
          break;
        default:
          null;
      }
  }
}
