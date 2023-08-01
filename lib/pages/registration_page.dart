import 'package:auth_tasks/bloc/bloc_auth/bloc_auth.dart';
import 'package:auth_tasks/bloc/bloc_auth/bloc_event.dart';
import 'package:auth_tasks/bloc/bloc_auth/bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold content
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthStateLoaded) {
            showSnackBarSuccess(context, 'Авторизация прошла успешно');
          } else if (state is AuthStateError) {
            showSnackBarError(context, 'Не удалось авторизоваться');
          }
        },
        builder: (context, state) {
          if (state is AuthStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 20.0),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      BlocProvider.of<AuthBloc>(context).add(
                        RegisterEvent(email: email, password: password),
                      );
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  void showSnackBarError(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showSnackBarSuccess(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.green,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
