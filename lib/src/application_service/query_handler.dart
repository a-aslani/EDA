import 'i_query.dart';
import 'service_failure.dart';

abstract class QueryHandler<TQuery extends IQuery, TData> {
  Future<(TData?, ServiceFailure?)> call(TQuery command);
}