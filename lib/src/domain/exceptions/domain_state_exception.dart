import '../../apperror/error.dart';

class DomainStateException implements Exception {
  ErrorType? _error;

  DomainStateException({required ErrorType error}) {
    _error = error;
  }

  String get message => toString();
  String get code => _error!.code();

  @override
  String toString() {
    return _error!.toString();
  }
}
