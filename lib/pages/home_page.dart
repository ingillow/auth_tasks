import 'package:auth_tasks/pages/platform_specific_ui/app_bar_specific.dart';
import 'package:auth_tasks/pages/platform_specific_ui/footer_specific.dart';
import 'package:auth_tasks/pages/registration_page.dart';
import 'package:auth_tasks/style/colors_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? cardWidth;
  double? cardHeight;
  bool _showFooter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: kIsWeb ? Size.fromHeight(100) : Size.fromHeight(50),
        child: CheckPlatform(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {


          if (kIsWeb) {
            cardWidth = 1602;
            cardHeight = 883;
          } else if (defaultTargetPlatform == TargetPlatform.windows) {
            cardWidth = 1366;
            cardHeight = 720;
          } else {
            cardWidth = 413;
            cardHeight = 852;
          }

          double cardLoginWidth;
          double cardLoginHeight;

          if (kIsWeb) {
            cardLoginWidth = 472;
            cardLoginHeight = 592;
          } else if (defaultTargetPlatform == TargetPlatform.windows) {
            cardLoginWidth = 468;
            cardLoginHeight = 592;
          } else {
            cardLoginWidth = 380;
            cardLoginHeight = 586;
          }
          cardWidth = cardWidth! < constraints.maxWidth
              ? cardWidth
              : constraints.maxWidth;
          cardHeight = cardHeight! < constraints.maxHeight
              ? cardHeight
              : constraints.maxHeight;
          return Stack(
            alignment: kIsWeb ? Alignment.centerLeft : Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: cardLoginHeight,
                width: cardLoginWidth,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: ColorsStyles.cardBackgroundLoginColors,
                  child: RegistrationPage(),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: _showFooter ? buildFooter(context) : null,
    );
  }
}
