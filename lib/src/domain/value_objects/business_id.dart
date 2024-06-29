import '../../apperror/error.dart';
import '../exceptions/invalid_value_object_state_exception.dart';
import '../../guid.dart';
import 'base_value_object.dart';

class BusinessId extends BaseValueObject<BusinessId> {
  final Guid value;

  BusinessId._({required this.value});

  factory BusinessId.create({required Guid value}) {
    if (value.toString().trim().isEmpty) {
      throw InvalidValueObjectStateException(
        error: ErrorType("business id is required"),
      );
    }

    return BusinessId._(value: value);
  }

  @override
  List<Object> getEqualityComponents() {
    return [value];
  }

  @override
  String toString() {
    return value.toString();
  }
}
