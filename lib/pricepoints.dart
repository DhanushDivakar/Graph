import 'package:collection/collection.dart';

class PricePoints {
  final double x;
  final double y;
  PricePoints({required this.x, required this.y});
}

List<PricePoints> get pricePoints {
  final data = <double>[2, 10, 15, 29, 7, 0, 45];
  return data
      .mapIndexed(
        ((index, element) {
          // print(index);
          // print(element);
          return PricePoints(x: index.toDouble(), y: element);
        }),
      )
      .toList();
      
}

/// 
