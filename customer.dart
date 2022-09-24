import 'dart:io';

import 'person.dart';

class Buyer extends Person {
  void Res() async {
    info();
    stdout.write('Welcome, Which brand do you want\nBMW\nMercedes\nMG\nAUDI\n');
    Brand = stdin.readLineSync()!.toUpperCase();
    stdout.write('Which Model Do U Want?');
    Model = stdin.readLineSync()!;
    Code = List.generate(8, (_) => rand.nextInt(8)).join() as int;

    Price = List.generate(5, (_) => rand.nextInt(9)).join() as int;
    stdout.write('The Price for This Model is $Price\nAdd To Cart?');
    String? answer = stdin.readLineSync()!;
    switch (answer) {
      case 'yes':
        //complete here
        await Receipt(Price);
        print(
            'Your Car has been successfully booked Go to the nearest branch to pay and pick up\n');
        break;
      default:
        return null;
    }
  }
}
