import 'dart:math';

class Guid {

  final String _value;

  Guid(this._value);

  factory Guid.generate() {
    final random = Random(DateTime.now().millisecond);

    final String hexDigits = "0123456789abcdef";
    List<String> uuid = List.filled(36, "");

    for (int i = 0; i < 36; i++) {
      final int hexPos = random.nextInt(16);
      uuid[i] = (hexDigits.substring(hexPos, hexPos + 1));
    }

    int pos = (int.parse(uuid[19], radix: 16) & 0x3) | 0x8; // bits 6-7 of the clock_seq_hi_and_reserved to 01

    uuid[14] = "4";  // bits 12-15 of the time_hi_and_version field to 0010
    uuid[19] = hexDigits.substring(pos, pos + 1);

    uuid[8] = uuid[13] = uuid[18] = uuid[23] = "-";

    final StringBuffer buffer = StringBuffer();
    buffer.writeAll(uuid);
    return Guid(buffer.toString());
  }

  @override
  String toString() {
   return _value;
  }
}