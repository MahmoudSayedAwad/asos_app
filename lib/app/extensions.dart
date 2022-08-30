import 'package:asos_app/app/constants/constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return Constants.zero.toDouble();
    } else {
      return this!;
    }
  }
}

extension NonNullDynamic on dynamic {
  orEmpty() {
    if (runtimeType is String?) {
      if (this == null) {
        return Constants.empty;
      } else {
        return this!;
      }
    } else if (runtimeType is int) {
      if (this == null) {
        return Constants.zero;
      } else {
        return this!;
      }
    }
  }
}
