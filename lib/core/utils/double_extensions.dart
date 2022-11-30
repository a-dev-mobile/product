extension DoubleUtils on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));

  static dynamic fromJson(data) => data is String
      ? double.tryParse(data)
      : data is int
          ? data.toDouble()
          : data;
}
