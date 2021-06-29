import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cardstrick/src/view/theme/colors.dart';

const defaultLetterSpacing = 0.03;
const mediumLetterSpacing = 0.04;
const largeLetterSpacing = 1.0;

final ThemeData appTheme = _buildAppTheme();

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: primaryDark800);
}

ThemeData _buildAppTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    appBarTheme: const AppBarTheme(brightness: Brightness.light, elevation: 0),
    colorScheme: _appColorScheme,
    primaryColor: medium100,
    buttonColor: medium100,
    accentColor: medium200,
    scaffoldBackgroundColor: medium100,
    cardColor: white,
    errorColor: errorRed,
    primaryIconTheme: _customIconTheme(base.iconTheme),
    outlinedButtonTheme: OutlinedButtonThemeData(style: _outlineButtonStyle),
    elevatedButtonTheme: ElevatedButtonThemeData(style: _elevatedButtonStyle),
    textTheme: _buildAppTextTheme(base.textTheme),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: medium100,
    ),
    primaryTextTheme: _buildAppTextTheme(base.primaryTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

TextTheme _buildAppTextTheme(TextTheme base) {
  return GoogleFonts.abrilFatfaceTextTheme(
    base
        .copyWith(
          headline3: base.headline3.copyWith(
            fontWeight: FontWeight.w500,
          ),
          headline5: base.headline5.copyWith(
            fontWeight: FontWeight.w500,
          ),
          headline6: base.headline6.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            letterSpacing: largeLetterSpacing,
          ),
          caption: base.caption.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          bodyText1: base.bodyText1.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          button: base.button.copyWith(
            fontWeight: FontWeight.w500,
            color: white,
            fontSize: 20,
          ),
        )
        .apply(
          displayColor: primaryDark800,
          bodyColor: primaryDark800,
        ),
  );
}

ColorScheme _appColorScheme = ColorScheme(
  primary: medium100,
  primaryVariant: primaryDark800,
  secondary: light50,
  secondaryVariant: primaryDark800,
  surface: white,
  background: white,
  error: errorRed,
  onPrimary: primaryDark800,
  onSecondary: primaryDark800,
  onSurface: primaryDark800,
  onBackground: primaryDark800,
  onError: white,
  brightness: Brightness.light,
);

final ButtonStyle _outlineButtonStyle = OutlinedButton.styleFrom(
  primary: primaryDark800,
  minimumSize: Size(160, 56),
  padding: EdgeInsets.symmetric(horizontal: 16),
  backgroundColor: light50,
  shape: RoundedRectangleBorder(
    side: BorderSide(color: primaryDark800, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
).copyWith(
  side: MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      final Color color =
          states.contains(MaterialState.pressed) ? primary500 : primaryDark800;
      return BorderSide(color: color, width: 2);
    },
  ),
  overlayColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) return medium200;
      return null; // Defer to the widget's default.
    },
  ),
);

final ButtonStyle _elevatedButtonStyle = ElevatedButton.styleFrom(
  primary: primaryDark800,
  onPrimary: white,
  minimumSize: Size(160, 56),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
).copyWith(
  overlayColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return Colors.deepPurple.shade100;
      return null; // Defer to the widget's default.
    },
  ),
);
