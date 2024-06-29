import '../events/domain_event.dart';

abstract class IAggregateRoot {
  void clearEvents();
  List<DomainEvent> get events;
}
