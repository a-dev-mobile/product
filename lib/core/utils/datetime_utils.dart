abstract class DateTimeUtils {
  static DateTime fromJson(String? data) {
    return data == null || data == '' ? DateTime.now() : DateTime.parse(data);
  }

  /// Moratorium date should be one day longer than the difference between now and received date
  static Duration getMoratoriumDate(DateTime date) {
    var diff = date.difference(DateTime.now());
    diff += const Duration(days: 1);

    return diff;
  }
}

extension RelativeDuration on Duration {
  /// Returns 25h/1d1h as 1 hour (because - 1 day)
  int get hours {
    return inHours - inDays * 24;
  }

  /// Returns 65m/1h5m as 5m
  int get minutes {
    return inMinutes - inHours * 60;
  }
}
