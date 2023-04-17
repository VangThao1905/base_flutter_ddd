import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
    textTheme: textTheme,
    colorScheme: lightColorScheme,
    appBarTheme: appBarTheme,
    tabBarTheme: tabBarTheme,
    outlinedButtonTheme: outlinedButtonThemeData,
    fontFamily: 'Arial');

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
    ),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
    side: MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return const BorderSide(color: Palette.disable, width: 1);
        }
        return const BorderSide(color: Palette.primary, width: 1);
      },
    ),
    backgroundColor: MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Palette.background;
        }
        return Palette.background;
      },
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Palette.disable;
        }
        return Palette.primary;
      },
    ),
    textStyle: MaterialStateProperty.all(
      textTheme.bodyText1?.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 20 / 16,
      ),
    ),
  ),
);

class Palette {
  static const Color text = Color(0xff111111);
  static const Color textHint = Color(0xffA5A6AE);
  static const Color background = Color(0xffFFFFFF);
  static const Color primary = Color(0xff237FCD);
  static const Color icon = Color(0xff666666);
  static const Color textGray = Color(0xff999999);
  static const Color divider = Color(0xff212121);
  static const Color body = Color(0xffEEEEEE);
  static const Color badge = Color(0xffEF3C4D);
  static const Color disable = Color(0xff999999);
  static const Color unRead = Color(0xff111111);
  static const Color read = Color(0xff333333);
  static const Color textNote = Color(0xff72727C);
  static const Color shadow = Color.fromARGB(16, 0, 0, 0);
  static const Color shadowAppBar = Color(0xffD3D3D3);
  static const Color bgListStudent = Color(0xffc3d9b3);
}

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Palette.background,
  centerTitle: false,
  elevation: 0,
  iconTheme: iconThemeData,
  titleSpacing: 0,
  titleTextStyle: const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Palette.text,
    height: 20.7 / 18,
  ),
);

TabBarTheme tabBarTheme = const TabBarTheme(
  labelColor: Palette.text,
  // indicatorColor: Palette.primary,
  labelPadding: EdgeInsets.symmetric(vertical: 6),
  labelStyle: TextStyle(
    fontSize: 14,
    color: Palette.text,
    fontWeight: FontWeight.w700,
    height: 21 / 14,
  ),
  unselectedLabelStyle: TextStyle(
    fontSize: 14,
    color: Palette.icon,
    fontWeight: FontWeight.w400,
    height: 21 / 14,
  ),
);

IconThemeData iconThemeData = const IconThemeData(
  color: Palette.icon,
  size: 24,
);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Palette.primary,
  onPrimary: Color(0xFFFFFFFF),
  // primaryContainer: Color(0xFFD1E4FF),
  // onPrimaryContainer: Color(0xFF001D36),
  secondary: Color(0xFF535F70),
  onSecondary: Color(0xFFFFFFFF),
  // secondaryContainer: Color(0xFFD7E3F8),
  // onSecondaryContainer: Color(0xFF101C2B),
  // tertiary: Color(0xFF6B5778),
  // onTertiary: Color(0xFFFFFFFF),
  // tertiaryContainer: Color(0xFFF3DAFF),
  // onTertiaryContainer: Color(0xFF251431),
  error: Color(0xFFBA1A1A),
  // errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  // onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFDFCFF),
  onBackground: Color(0xFF1A1C1E),
  surface: Color(0xFFFDFCFF),
  onSurface: Color(0xFF1A1C1E),
  // surfaceVariant: Color(0xFFDFE2EB),
  // onSurfaceVariant: Color(0xFF43474E),
  // outline: Color(0xFF73777F),
  // onInverseSurface: Color(0xFFF1F0F4),
  // inverseSurface: Color(0xFF2F3033),
  // inversePrimary: Color(0xFF9FCAFF),
  // shadow: Color(0xFF000000),
  // surfaceTint: Color(0xFF0061A4),
  // outlineVariant: Color(0xFFC3C6CF),
  // scrim: Color(0xFF000000),
  secondaryVariant: Color(0xFF000000),
  primaryVariant: Color(0xFF000000),
);

TextTheme textTheme = const TextTheme(
  headline1: TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    fontFamily: 'Arial',
  ),
  headline2: TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    fontFamily: 'Arial',
  ),
  headline3: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    fontFamily: 'Arial',
  ),
  headline4: TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    fontFamily: 'Arial',
  ),
  headline5: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: 'Arial',
  ),
  headline6: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    fontFamily: 'Arial',
  ),
  subtitle1: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    fontFamily: 'Arial',
  ),
  subtitle2: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    fontFamily: 'Arial',
  ),
  bodyText1: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    fontFamily: 'Arial',
  ),
  bodyText2: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    fontFamily: 'Arial',
  ),
  button: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    fontFamily: 'Arial',
  ),
  caption: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    fontFamily: 'Arial',
  ),
  overline: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    fontFamily: 'Arial',
  ),
);
