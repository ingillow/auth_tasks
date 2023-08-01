import 'package:auth_tasks/style/colors_styles.dart';
import 'package:flutter/material.dart';


class StyleTextDecorations {
  static final TextStyle loginCardHeaderTextStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 39,
      color:Colors.black,
      fontFamily: 'Rubic-Bold',
      letterSpacing: 0.39);

  static final TextStyle loginCardSubHeaderTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      fontFamily: 'Rubic',
      color: ColorsStyles.infoColors,
      letterSpacing: 0.45);

  static final TextStyle forgotPasswordTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: 'Rubic',
      decoration: TextDecoration.underline,
      color: ColorsStyles.errorColors,
      letterSpacing: 0.36);

  static final TextStyle loginTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      fontFamily: 'Rubic-Bold',
      color: ColorsStyles.cardIconColors,
      letterSpacing: 0.45);

  static final TextStyle loginWithTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'Rubic',
      color: ColorsStyles.infoColors,
      letterSpacing: 0.48);

  static final TextStyle noAccountTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'Rubic',
      color: ColorsStyles.infoColors,
      letterSpacing: 0.48);

  static final TextStyle signUpTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: 'Rubic-Bold',
      color: ColorsStyles.errorColors,
      letterSpacing: 0.48);

  static final TextStyle hintEmailTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      fontFamily: 'Rubic',
      color: ColorsStyles.lightViolet,
      letterSpacing: 0.45);

  static final TextStyle hintPasswordTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      fontFamily: 'Rubic',
      color: ColorsStyles.lightViolet,
      letterSpacing: 0.45);

  static final TextStyle appBarLinks = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
      fontFamily: 'Rubic',
      color: ColorsStyles.errorColors,
      letterSpacing: 0.26
  );
  static final TextStyle footerHeaderTextStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      fontFamily: 'Rubic',
      color: ColorsStyles.cardIconColors,

  );
  static final TextStyle footerTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'Rubic',
      color: ColorsStyles.cardIconColors,
      letterSpacing: 0.48
  );
}
