import 'Seller.dart';

class Showroom extends Seller {
  void View() async {
    Products().listen((W) {
      Product(Brand, Model, Date_of_Use, Price, Code);
    });
  }
}

Stream Products() {
  return Stream.periodic(Duration(seconds: 2), (int? i) => i);
}
