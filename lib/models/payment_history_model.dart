import 'dart:convert';

class PaymentHistoryModel {
  final String name;
  final String package;
  final num price;
  final DateTime date;
  final String transactionId;
  final String orderId;
  bool isExpanded;
  PaymentHistoryModel({
    this.name,
    this.package,
    this.price,
    this.isExpanded = false,
    this.date,
    this.transactionId,
    this.orderId,
  });

  PaymentHistoryModel copyWith({
    String name,
    String package,
    int price,
    String date,
    String transactionId,
    String orderId,
  }) {
    return PaymentHistoryModel(
      name: name ?? this.name,
      package: package ?? this.package,
      price: price ?? this.price,
      date: date ?? this.date,
      transactionId: transactionId ?? this.transactionId,
      orderId: orderId ?? this.orderId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'package': package,
      'price': price,
      'date': date,
      'transaction_id': transactionId,
      'order_id': orderId,
    };
  }

  static PaymentHistoryModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PaymentHistoryModel(
      name: map['name'],
      package: map['package'],
      price: map['price']?.toInt(),
      date: map['date'],
      transactionId: map['transaction_id'],
      orderId: map['order_id'],
    );
  }

  String toJson() => json.encode(toMap());

  static PaymentHistoryModel fromJson(String source) =>
      fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentHistoryModel(name: $name, package: $package, price: $price, date: $date, transaction_id: $transactionId, order_id: $orderId)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PaymentHistoryModel &&
        o.name == name &&
        o.package == package &&
        o.price == price &&
        o.date == date &&
        o.transactionId == transactionId &&
        o.orderId == orderId;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        package.hashCode ^
        price.hashCode ^
        date.hashCode ^
        transactionId.hashCode ^
        orderId.hashCode;
  }
}
