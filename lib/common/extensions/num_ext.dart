extension NumHelper on num {
  String convertNumber() {
    if (this < 1000) {
      return toString();
    }
    if (this >= 1000) {
      return '${this / 1000}k';
    }
    if (this >= 1000000) {
      return '${this / 1000000}m';
    }
    if (this >= 1000000000) {
      return '${this / 1000000000}b';
    }
    return toString();
  }
}
