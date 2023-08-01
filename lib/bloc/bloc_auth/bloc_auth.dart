import 'package:auth_tasks/api_service/api_service.dart';
import 'package:auth_tasks/bloc/bloc_auth/bloc_event.dart';
import 'package:auth_tasks/bloc/bloc_auth/bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthService authBaseService = AuthService();

  AuthBloc() : super(AuthStateInitial()) {
    on<RegisterEvent>(
      (event, emit) async {
        emit(AuthStateLoading());
        try {
          await authBaseService.loginUser(event.email, event.password);
          emit(AuthStateLoaded());
        } catch (e) {
          emit(AuthStateError("Registration failed: $e"));
        }
      },
    );
  }
}
