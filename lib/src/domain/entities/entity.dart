import '../../equatable.dart';
import 'auditable_entity.dart';

abstract class Entity<TId> extends AuditableEntity with EquatableMixin {
  TId id;

  // BusinessId businessId = BusinessId.create(value: Guid());

  Entity({required this.id});

  @override
  List<Object> get props => [id.toString()];
}
