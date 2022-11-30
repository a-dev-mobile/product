extension DurationExtensions on Duration {
  /// Converts the duration into a readable string
  /// 05:15
  String toHoursMinutes() {
    final twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    return '${_toTwoDigits(inHours)}:$twoDigitMinutes';
  }

  /// Converts the duration into a readable string
  /// 05:15:35
  String toHoursMinutesSeconds() {
    final twoDigitDays = _toTwoDigits(inHours ~/ 24);
    final twoDigitHours = _toTwoDigits(inHours.remainder(24));
    final twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    return '$twoDigitDays:$twoDigitHours:$twoDigitMinutes';
  }

  String _toTwoDigits(int n) {
    if (n >= 10) {
      return '$n';
    }
    return '0$n';
  }
}
