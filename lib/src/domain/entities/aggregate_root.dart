import '../events/domain_event.dart';
import 'entity.dart';
import 'i_aggregate_root.dart';

abstract class AggregateRoot<TId> extends Entity<TId> implements IAggregateRoot {
  final List<DomainEvent> _events = [];

  AggregateRoot({required super.id});

  void on(DomainEvent event);

  void addEvent(DomainEvent event) => _events.add(event);

  void apply(DomainEvent event) {
    on(event);
    addEvent(event);
  }

  @override
  List<DomainEvent> get events => _events;

  @override
  void clearEvents() => _events.clear();
}
