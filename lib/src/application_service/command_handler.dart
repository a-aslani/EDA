import 'i_command.dart';
import 'service_failure.dart';

abstract class CommandHandler<TCommand extends ICommand> {
  Future<ServiceFailure?> call(TCommand command);
}

abstract class CommandHandlerWithResponseData<TCommand extends ICommand, TData> {
  Future<(TData?, ServiceFailure?)> call(TCommand command);
}