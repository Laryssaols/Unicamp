class Tip {
  final double _defaultTip;
  double? _customTip;
  double? _totalAmount;

  Tip() : _defaultTip = 10 {
    _customTip = 10;
  }

  Tip.withData({double customTip = 10, double totalAmount = 30})
      : _defaultTip = 10 {
    _customTip = customTip;
    _totalAmount = totalAmount;
  }
  String get customTip {
    return (_customTip ?? 0).toStringAsFixed(2);
  }

  String get defaultTip {
    return _defaultTip.toStringAsFixed(2);
  }

  String get amount {
    return (_totalAmount ?? 0).toStringAsFixed(2);
  }

  String get defaultTippedAmount {
    return _totalAmount == null
        ? "0"
        : (_totalAmount! * _defaultTip / 100).toStringAsFixed(2);
  }

  String get amountPlusDefaultTippedAmount {
    return _totalAmount == null
        ? "0"
        : (_totalAmount! * (1 + (_defaultTip / 100))).toStringAsFixed(2);
  }

  String get customTippedAmount {
    return _totalAmount == null
        ? "0"
        : ((_totalAmount ?? 0) * (_customTip ?? 0) / 100).toStringAsFixed(2);
  }

  String get amountPlusCustomTippedAmount {
    return _totalAmount == null
        ? "0"
        : (_totalAmount! * (1 + ((_customTip ?? 0) / 100))).toStringAsFixed(2);
  }

  set amount(String value) {
    try {
      _totalAmount = double.parse(value);
    } catch (e) {
      _totalAmount = 0;
    }
  }

  set customTip(String value) {
    try {
      _customTip = double.parse(value);
    } catch (e) {
      _customTip = 0;
    }
  }
}
