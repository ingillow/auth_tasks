import 'package:auth_tasks/bloc/bloc_auth/bloc_auth.dart';
import 'package:auth_tasks/bloc/bloc_auth/bloc_event.dart';
import 'package:auth_tasks/bloc/bloc_auth/bloc_state.dart';
import 'package:auth_tasks/pages/header_login_card.dart';
import 'package:auth_tasks/style/colors_styles.dart';
import 'package:auth_tasks/style/text_decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double? edges;
    double? buttonSizeW;
    double? buttonSizeH;
    if (kIsWeb) {
      edges = 30.0;
      buttonSizeW = 412;
      buttonSizeH = 50;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      edges = 30.0;
      buttonSizeW = 408;
      buttonSizeH = 50;
    } else {
      edges = 28.0;
      buttonSizeW = 324;
      buttonSizeH = 49;
    }

    return BlocConsumer<AuthBloc, AuthState>(
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
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: HeaderLoginCard(),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 28, right: 28),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Логин',
                      hintStyle: StyleTextDecorations.hintEmailTextStyle,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 20, top: 12),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: ColorsStyles.primaryColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: ColorsStyles.lightViolet,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 28, right: 28),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Пароль',
                      hintStyle: StyleTextDecorations.hintEmailTextStyle,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 20, top: 12),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: ColorsStyles.primaryColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: ColorsStyles.lightViolet,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: RichText(
                      text: TextSpan(
                        text: 'Забыли пароль?',
                        recognizer: TapGestureRecognizer()..onTap,
                        style: StyleTextDecorations.forgotPasswordTextStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: ColorsStyles.primaryColor,
                          minimumSize: Size(buttonSizeW!, buttonSizeH!)),
                      onPressed: () {
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        BlocProvider.of<AuthBloc>(context).add(
                          RegisterEvent(email: email, password: password),
                        );
                      },
                      child: const Text('Войти'),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 10,
                        child: Divider(
                          height: 43,
                          thickness: 2,
                          color: ColorsStyles.infoColors,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Или войдите с помощью:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 10,
                        child: Divider(
                          height: 43,
                          thickness: 2,
                          color: ColorsStyles.infoColors,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 106,
                          height: 60,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: ColorsStyles.cardIconColors,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const ImageIcon(
                            AssetImage("assets/icons/yandex.png"),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: ColorsStyles.cardIconColors,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ImageIcon(
                            AssetImage("assets/icons/google.png"),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 68,
                          height: 60,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: ColorsStyles.cardIconColors,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ImageIcon(
                            AssetImage("assets/icons/vk.png"),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Text('Ещё нет аккаунта?',
                            style: StyleTextDecorations.noAccountTextStyle)),
                    const SizedBox(width: 10),
                    Flexible(
                        child: Text('Зарегистрируйтесь',
                            style: StyleTextDecorations.signUpTextStyle))
                  ],
                ),
              ],
            ),
          );
        }
      },
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
