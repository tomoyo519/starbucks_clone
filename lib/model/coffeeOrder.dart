import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffeeOrder.freezed.dart';

part 'coffeeOrder.g.dart';

@freezed
class CoffeeOrder with _$CoffeeOrder {
  const factory CoffeeOrder({
    required String name,
    required String iceOrHot,
    required String size,
  }) = _CoffeeOrder;

  factory CoffeeOrder.fromJson(Map<String, Object?> json) =>
      _$CoffeeOrderFromJson(json);
}
