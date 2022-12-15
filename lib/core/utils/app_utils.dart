abstract class AppUtilsString {
  static String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  static String removeLastCharacter(String str) {
    var result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(0, str.length - 1);
    }

    return result;
  }

  static String getLastCharacter(String str) {
    var result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(str.length - 1);
    }

    return result;
  }

  static String getFirstCharacter(String str) {
    var result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(0);
    }

    return result;
  }

  static String addZeroIsFirstDecimal(String text) {
    return AppUtilsString.getFirstCharacter(text) == '.'
        // ignore: parameter_assignments
        ? text = '0$text'
        : text;
  }
}

class AppUtilsNumber {
  static String getFormatNumber({
    required double num,
    int numberDigitsAfterPoint = 2,
  }) {
// округляем, но нет удаления конечных нулей
    final num2 = num.toStringAsFixed(numberDigitsAfterPoint);
    // если нет точки возвращаем
    if (!num2.contains('.')) return num2;

    // ignore: prefer-correct-identifier-length
    final s = num2.split('.');
    var mainResult = num2;
    // проверяем есть ли последние нули
    if (AppUtilsString.getLastCharacter(s[1]) == '0') {
      var oldString = '';
      var newString = '';
      oldString = s[1];

      for (var i = 0; i < s[1].length; i++) {
        if (AppUtilsString.getLastCharacter(oldString) == '0') {
          newString = AppUtilsString.removeLastCharacter(oldString);
        } else {
          break;
        }
        oldString = newString;
      }
// действия, если после ни чего ни осталось оставляем split 0
      mainResult = newString.isEmpty ? s.first : '${s.first}.$newString';
    }

    return mainResult;
  }




}
