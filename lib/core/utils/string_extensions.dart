

extension String2 on String {
  String toCapitalized() =>
      
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
      /// text text >>> Text text
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String capitalize() {
    return isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
  }
}

extension String3 on String {
  String getLastChars(int n) => substring(length - n);
}

extension String4 on String {
  String removeLastChars() => substring(0, length - 1);
}
