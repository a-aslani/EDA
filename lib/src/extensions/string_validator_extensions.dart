extension Validatior on String {
  bool isNumeric() => RegExp("d+").hasMatch(trim());
  bool isLengthBetween(int minLength, int maxLength) => trim().length <= maxLength && trim().length >= minLength;
  bool isLengthLessThan(int length) => trim().length < length;
  bool isLengthLessThanOrEqual(int length) => trim().length <= length;
  bool isLengthGreaterThan(int length) => trim().length > length;
  bool isLengthGreaterThanOrEqual(int length) => trim().length >= length;
  bool isLengthEqual(int length) => trim().length == length;
}