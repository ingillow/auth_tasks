import 'package:auth_tasks/style/text_decoration.dart';
import 'package:flutter/material.dart';

class HeaderLoginCard extends StatelessWidget {
  const HeaderLoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'Вход',
          style: StyleTextDecorations.loginCardHeaderTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Введите данные, чтобы войти в личный кабинет.',
              style: StyleTextDecorations.loginCardSubHeaderTextStyle),
        )
      ],
    );
  }
}
