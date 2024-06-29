const errorCodePrefix = "ER";

class ErrorType {

  final String value;

  const ErrorType(this.value);

  String error() {
    if(value.trim().startsWith(errorCodePrefix)) {
      return value.trim().substring(code().length).trim();
    }
    return value.trim();
  }

  String code() {
    if(value.trim().startsWith(errorCodePrefix)) {
      return value.trim().split(" ").first;
    }
    return "";
  }

  ErrorType vars({List<dynamic> params = const []}) {

    if (params.isEmpty) {
      return ErrorType(value.trim());
    }

    String result = value.trim();

    for (int i = 0; i < params.length; i++) {
      result = result.replaceAll("{{$i}}", params[i].toString());
    }

    return ErrorType(result);
  }

  @override
  String toString() {
    return error();
  }
}