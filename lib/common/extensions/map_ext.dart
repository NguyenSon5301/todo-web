import 'dart:core';

extension MapParser on Map {
  double parseDouble(String key, {double defaultValue = 0.0}) {
    try {
      final value = this[key];

      if (value != null) {
        return double.parse(value.toString());
      } else {
        return defaultValue;
      }
    } catch (e) {
      return defaultValue;
    }
  }

  String parseString(String key, {String defaultValue = ''}) {
    try {
      return this[key]?.toString() ?? defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  DateTime? parseSecondToDate(String key, {bool isUtc = false}) {
    try {
      final value = parseInt(key);
      if (value == 0) {
        return null;
      }
      return DateTime.fromMillisecondsSinceEpoch(value * 1000, isUtc: isUtc);
    } catch (e) {
      return null;
    }
  }

  bool parseBool(String key, {bool defaultValue = false}) {
    try {
      return this[key] ?? defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  DateTime? parseDateISO8601(String key) {
    // parse kiểu string 2020-02-17T20:44:34.000Z sang date
    try {
      final value = this[key];
      if (value != null) {
        return DateTime.parse(value.toString());
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  int parseInt(String key, {int defaultValue = 0}) {
    try {
      final value = this[key];
      if (value != null) {
        return int.parse(value.toString());
      } else {
        return defaultValue;
      }
    } catch (e) {
      return defaultValue;
    }
  }
}
