/// Validator class hold the RegExp for requested validation

class PasswordValidate {
  /// Checks if password has minLength
  bool hasMinLength(String password, int minLength) {
    return password.length >= minLength;
  }

  /// Checks if password has at least normal char letter matches
  bool hasMinNormalChar(String password, int normalCount) {
    final  pattern = '^(.*?[a-z]){$normalCount,}';
    return password.contains(RegExp(pattern));
  }

  /// Checks if password has at least uppercaseCount uppercase letter matches
  bool hasMinUppercase(String password, int uppercaseCount) {
    final pattern = '^(.*?[A-Z]){$uppercaseCount,}';
    return password.contains(RegExp(pattern));
  }

  /// Checks if password has at least numericCount numeric character matches
  bool hasMinNumericChar(String password, int numericCount) {
    final pattern = '^(.*?[0-9]){$numericCount,}';
    return password.contains(RegExp(pattern));
  }

  //Checks if password has at least specialCount special character matches
  bool hasMinSpecialChar(String password, int specialCount) {
    final pattern = r"^(.*?[$&+,\:;/=?@#|'<>.^*()_%!-]){"'$specialCount,}';
    return password.contains(RegExp(pattern));
  }
}
