///
/// Validation
///
// ignore_for_file: always_put_control_body_on_new_line, unnecessary_raw_strings, unnecessary_string_escapes, avoid_classes_with_only_static_members
/* cSpell:disable */
class Validate {
  ///
  /// check password if return string is has error else null not erorr
  ///
  static String? password(String password) {
    if (password.length < 8) return 'Phải có tối thiểu 8 kí tự';
    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Phải có ít nhất 1 kí tự in thường';
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Phải có ít nhất 1 kí tự in hoa';
    }
    if (!password.contains(RegExp(r'[0-9]'))) return 'Phải có ít nhất 1 số';
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Phải có ít nhất 1 kí tự đặc biệt';
    }
    return null;
  }

  static String? passwordNotSpecialCharacters(String password) {
    if (password.length < 6) return 'Mật khẩu có ít nhất 6 kí tự';
    if (password.length > 8) return 'Mật khẩu có nhiều nhất 8 kí tự';
    // if (!password.contains(RegExp(r"[a-z]"))) return 'Phải có ít nhất 1 kí tự in thường';
    // if (!password.contains(RegExp(r"[A-Z]"))) return 'Phải có ít nhất 1 kí tự in hoa';
    if (!password.contains(RegExp(r'[0-9]'))) return 'Phải có ít nhất 1 số';
    // if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) return 'Phải có ít nhất 1 kí tự đặc biệt';
    return null;
  }

  //Validate user code
  static String? userCode(String userCode) {
    //final RegExp reg = RegExp(r'^[a-zA-Z0-9]+[0-9]*$');
    if (userCode.length < 3) return 'Mã nhân viên phải có tối thiểu 4 kí tự';
    // if (!user_code.contains(RegExp(r"[a-z]"))) return 'Phải có ít nhất 1 kí tự in thường';
    if (!userCode.contains(RegExp(r'[0-9]'))) return 'Phải có ít nhất 1 số';
    return null;
    // if (reg.hasMatch(user_code.toString())) {
    //   // user code validate
    //   return null;
    // } else {
    //   // user code not validate
    //   return "Mã nhân viên cần có cả chữ và số";
    // }
  }

  ///
  /// Validate email
  ///
  static String? email(String text) {
    // a-zA-Z0-9 : allow a - Z 0 -9
    // + @(Bắt buộc )
    final reg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (reg.hasMatch(text)) {
      // email hợp lệ
      return null;
    } else {
      // không hợp lệ
      return 'Địa chỉ email không hợp lệ';
    }
  }

  static bool checkEmail(String text) {
    final reg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (reg.hasMatch(text)) {
      // email hợp lệ
      return true;
    } else {
      // không hợp lệ
      return false;
    }
  }

  ///
  /// Validate phone
  ///
  static String? phone(String? text) {
    //r'^([+0]9)?[0-9]{10}$'
    // final RegExp reg = RegExp(r'^([+0])\d{10}$');
    // r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$'
    final reg = RegExp(r'^([+84|0]+(3|5|7|8|9|1[2|6|8|9]))+([0-9]{8})*$');
    if (reg.hasMatch(text.toString())) {
      // phone validate
      return null;
    } else {
      // phone not validate
      return 'Số điện thoại không hợp lệ';
    }
  }

  ///
  /// empty
  ///
  static String? empty(String? text, {int? rangeFrom, int? rangeTo}) {
    if (!Validate.nullOrEmpty(text)) {
      return 'Tên không được để trống';
    }
    if (!Validate.nullOrEmpty(rangeFrom)) {
      if (text.toString().length < rangeFrom!) {
        return 'Tên ít nhất phải $rangeFrom ký tự';
      }
    }
    if (!Validate.nullOrEmpty(rangeTo)) {
      if (text.toString().length > rangeTo!) {
        return 'Tên không được quá $rangeFrom ký tự';
      }
    }
    return null;
  }

  ///
  /// empty
  ///
  static String? increment(String? number) {
    var tNum = number;
    if (Validate.nullOrEmpty(number)) {
      tNum = '0';
    }
    if (int.parse(tNum!) <= 0) {
      return 'Số lượng không được bé hơn 0';
    } else if (int.parse(tNum) >= 999) {
      return 'Số lượng không được lớn hơn 999';
    }
    return null;
  }

  ///
  /// Check nullOrEmpty
  ///
  static bool nullOrEmpty(dynamic value) {
    if (value == null ||
        value.toString().isEmpty ||
        value.toString() == 'null' ||
        (value is List && value.isEmpty == true)) return true;
    return false;
  }

  static String getGenderString(dynamic value) {
    if (nullOrEmpty(value) == true) return 'Không xác định';

    if (value == 1 || value == '1') {
      return 'Nam';
    } else if (value == 2 || value == '2') {
      return 'Nữ';
    } else if (value == 2 || value == '3') {
      return 'Tất cả';
    }
    return 'Không xác định';
  }

  static String parseStringFromJson(dynamic value, {String defaultValue = ''}) {
    if (value != null && value.toString().isNotEmpty && value != 'null') {
      return value.toString();
    }

    return defaultValue;
  }

  static String getGenderValue(dynamic value) {
    if (nullOrEmpty(value) == true) return '3';

    if (value.runtimeType == String) {
      if (value.toString().contains('Nam')) {
        return '1';
      } else if (value.toString().contains('Nữ')) {
        return '2';
      }
      return '3';
    }
    return '3';
  }

  static int parseIntFromJson(dynamic number, {int defaultVal = 0}) {
    if (Validate.nullOrEmpty(number) == false) {
      // Double
      if (number is num) {
        return number.round();
      } else if (number is String) {
        // String double
        if (number.contains('.')) {
          return double.parse(number).round();
        } else {
          // May be string int
          return int.parse(number);
        }
      }
    }
    return defaultVal;
  }

  static int? parseIntOrNullFromJson(dynamic number, {int? defaultVal}) {
    if (!Validate.nullOrEmpty(number)) {
      // Double
      if (number is num) {
        return number.round();
      } else if (number is String) {
        // String double
        if (number.contains('.')) {
          return double.parse(number).round();
        } else {
          // May be string int
          return int.parse(number);
        }
      }
    }
    return defaultVal;
  }

  static double parseDoubleFromJson(dynamic number, {double fault = 0}) {
    if (number != null) {
      // Double
      if (number is num) {
        return number * 1.0;
      } else if (number is String) {
        // String double
        if (number.contains('.')) {
          return double.parse(number);
        } else {
          // May be string int
          return int.parse(number) * 1.0;
        }
      }
    }
    return fault;
  }

  static bool parseBoolFromJson(dynamic value, {bool fault = false}) {
    if (value != null) {
      return value as bool;
    }
    return fault;
  }

  static bool parseBoolFromInt(int? value, {bool fault = false}) {
    if (value != null) {
      // ignore: avoid_bool_literals_in_conditional_expressions
      return value == 0 ? false : true;
    }
    return fault;
  }

  static String toSlug(String strIn, {String char = '-'}) {
    if (Validate.nullOrEmpty(strIn)) return '';
    var str = strIn;
    str = str.toLowerCase();
    str = str.replaceAll(RegExp('[àáạảãâầấậẩẫăằắặẳẵ]'), 'a');
    str = str.replaceAll(RegExp('[èéẹẻẽêềếệểễ)]'), 'e');
    str = str.replaceAll(RegExp('[ìíịỉĩ]'), 'i');
    str = str.replaceAll(RegExp('[òóọỏõôồốộổỗơờớợởỡ]'), 'o');
    str = str.replaceAll(RegExp('[ùúụủũưừứựửữ]'), 'u');
    str = str.replaceAll(RegExp('[ỳýỵỷỹ]'), 'y');
    str = str.replaceAll(RegExp('/(đ)/g'), 'd');
    str = str.replaceAll(RegExp('/([^0-9a-z-\s])/g'), '');
    str = str.replaceAll(RegExp('/(\s+)/g'), char);
    final regexRemoveDuplicate = RegExp('$char+');
    return str.replaceAll(regexRemoveDuplicate, char);
  }
}
