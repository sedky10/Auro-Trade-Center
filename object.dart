import 'dart:math';

abstract class Objects {
  var rand = Random();
  var _code;
  String? _Model;
  String? _Brand;
  var _price;

  set Code(var Value) => _code = Value;
  get Code => _code;
  set Model(String? Value) => _Model = Value;
  String? get Model => _Model;
  set Brand(String? Value) => _Brand = Value;
  String? get Brand => _Brand;
  set Price(var Value) => _price = Value;
  get Price => _price;
  Future Receipt(int? r) {
    return Future.delayed(Duration(seconds: 5),
        () => print('Ok\n ${Brand} ${Model} Code $Code it Coast $r'));
  }
}
