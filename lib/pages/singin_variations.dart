

import 'package:flutter/material.dart';

import '../style/colors_styles.dart';

class SigninVariations extends StatelessWidget {
  const SigninVariations({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.all(20.0),
              child: Container(
                width: 106,
                height: 60,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: ColorsStyles
                      .cardIconColors,
                  borderRadius:
                  BorderRadius.circular(14),
                ),
                child: ImageIcon(
                  AssetImage(
                      "assets/icons/yandex.png"),
                  size: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.all(20.0),
              child: Container(
                width: 60,
                height: 60,
                padding:
                const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: ColorsStyles
                      .cardIconColors,
                  borderRadius:
                  BorderRadius.circular(16),
                ),
                child: const ImageIcon(
                  AssetImage(
                      "assets/icons/google.png"),
                  size: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.all(20.0),
              child: Container(
                width: 68,
                height: 60,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: ColorsStyles
                      .cardIconColors,
                  borderRadius:
                  BorderRadius.circular(16),
                ),
                child: const ImageIcon(
                  AssetImage(
                      "assets/icons/vk.png"),
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      );
  }
}
