extension StringHelper on String {
  String hiddenText([int showLastChar = 0, String char = '*']) {
    if (isEmpty) {
      return '';
    }
    final temp = StringBuffer();
    for (var i = 0; i < length; i++) {
      temp.write(i < length - showLastChar ? char : this[i]);
    }
    return temp.toString();
  }
}
