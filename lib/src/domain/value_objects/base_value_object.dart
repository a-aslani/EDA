import '../../equatable.dart';

abstract class BaseValueObject<TValueObject> extends Equatable {
  List<Object> getEqualityComponents();

  @override
  List<Object> get props => getEqualityComponents();
}
