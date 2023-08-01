import 'package:auth_tasks/style/colors_styles.dart';
import 'package:auth_tasks/style/text_decoration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppBarWeb extends StatelessWidget {
  const AppBarWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.0, right: 135, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Для бизнеса',
                  style: StyleTextDecorations.appBarLinks,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Для разработчиков',
                  style: StyleTextDecorations.appBarLinks,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Для вас',
                  style: StyleTextDecorations.appBarLinks,
                ),
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 140.0, top: 10, right: 30),
              child: Image.asset(
                'assets/Logo.png',
                width: 100,
                height: 50,
              ),
            ),
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Игры',
                    recognizer: TapGestureRecognizer()..onTap,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        decorationThickness: 4,
                        fontFamily: 'Rubik'),
                  ),
                  WidgetSpan(child: SizedBox(width: 25,)),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap,
                    text: 'Приложения',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Rubik'),
                  ),
                  WidgetSpan(child: SizedBox(width: 25,)),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap,
                    text: 'Сообщество',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Rubik'),
                  ),
                  WidgetSpan(child: SizedBox(width: 25,)),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap,
                    text: 'Турнир',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Rubik'),
                  ),
                  WidgetSpan(child: SizedBox(width: 25,)),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap,
                    text: 'Справка',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Rubik'),
                  ),
                ])),
            SizedBox(
              width: 78,
            ),
            Container(
              width: 318,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Поиск',
                  border: InputBorder.none,
                  contentPadding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20),
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: ColorsStyles.primaryColor, width: 2.0,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: ColorsStyles.lightViolet, width: 2.0,),
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 15.0),
              child: Icon(
                Icons.favorite_outline,
                color:ColorsStyles.lightViolet,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.shopping_cart_outlined,
                color:ColorsStyles.lightViolet,
              ),
            ),
            Icon(
              Icons.logout_rounded,
              color:ColorsStyles.lightViolet,
            ),
            Text(
              'Вход',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
