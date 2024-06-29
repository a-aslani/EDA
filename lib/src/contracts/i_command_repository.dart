abstract class ICommandRepository<TAggregate, TId> {
  Future<void> save(TAggregate aggregate);
  Future<TAggregate> load(TId id);
}