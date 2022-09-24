import 'dart:io';

import 'Cars.dart';
import 'customer.dart';

class Seller extends Buyer {
  int? _date_of_use;

  set Date_of_Use(int? Value) {
    if (Value! <= 60) {
      _date_of_use = Value;
    } else
      Exception('Sorry,Ur Car is Too Old');
  }

  // Seller() {
  //   info();
  //   Details();
  // }
  int? get Date_of_Use => _date_of_use;
  void Details() async {
    info();
    print('Please Complete the Form\n');
    stdout.write('Which Brand Do U Have\nBMW\nMG\nMERCEDES\nAUDI?');
    Brand = stdin.readLineSync()!.toUpperCase() ;
    stdout.write('Which Model?');
    Model = stdin.readLineSync()!;
    stdout.write('The duration of your use of the car in months is?');
    Date_of_Use = int.parse(stdin.readLineSync()!);

    stdout.write('At what price do you want to sell it in Numbers?');

    Price = stdin.readByteSync();
    Code = List.generate(8, (_) => rand.nextInt(8)).join() as int?;
    stdout.write(
        'Your Car Code is $Code Keep it\nUr Car Has Been Added To The ShowRoom, Wanna See it?');
    String? ans = stdin.readLineSync()!.toUpperCase();
    var mm = Product(Brand, Model, Date_of_Use, Price, Code);
    switch (ans) {
      case "YES":
        await mm;

        break;
      default:
    }
  }

  Future Product(A, B, C, D, E) {
    return Future.delayed(
        Duration(seconds: 5),
        () => print(
            """$A $B it Used For $C\nPrice:$D Dollar\n$E it Owner is Mr $name his Number $phone"""));
  }
}
