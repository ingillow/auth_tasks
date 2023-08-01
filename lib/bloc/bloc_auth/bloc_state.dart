abstract class AuthState {}

class AuthStateInitial extends AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateLoaded extends AuthState {
  AuthStateLoaded();
}

class AuthStateError extends AuthState {
  final String messageError;
  AuthStateError(this.messageError);
}
