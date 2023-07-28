import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../presentation/styles/sizes.dart';
import '../colors/app_colors_light.dart';
import '../colors/custom_colors.dart';
import '../colors/i_app_colors.dart';
import 'i_theme.dart';

class ThemeLight implements ITheme {
  @override
  final ThemeData baseTheme = ThemeData.light();

  @override
  final IAppColors appColors = AppColorsLight();

  @override
  late final Color primaryColor = appColors.primaryColor;

  @override
  late final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: appColors.primary,
    secondary: appColors.secondary,
  );

  @override
  late final AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: appColors.appBarBGColor,
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      //For Android
      statusBarColor: appColors.statusBarColor,
      systemNavigationBarColor: appColors.bottomNavBarColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    elevation: 0,
  );

  @override
  late final Color scaffoldBackgroundColor = appColors.scaffoldBGColor;

  @override
  late final NavigationBarThemeData navigationBarTheme = NavigationBarThemeData(
    backgroundColor: appColors.bottomNavBarColor,
    surfaceTintColor: Colors.transparent,
    shadowColor: appColors.bottomNavBarColor,
    indicatorColor: appColors.secondary.withOpacity(0.24),
    labelTextStyle: MaterialStateProperty.resolveWith((states) {
      return TextStyle(
        color: appColors.customColors.font14Color,
        fontSize: Sizes.font12,
      );
    }),
    elevation: 4,
  );

  @override
  late final NavigationRailThemeData navigationRailTheme = NavigationRailThemeData(
    backgroundColor: appColors.bottomNavBarColor,
    elevation: 4,
  );

  @override
  late final TextTheme textTheme = TextTheme(
    titleMedium: TextStyle(
      color: appColors.textFieldSubtitle1Color,
      fontSize: Sizes.font14,
    ),
  );

  @override
  late final TextTheme primaryTextTheme = baseTheme.primaryTextTheme;

  @override
  late final Color hintColor = appColors.textFieldHintColor;

  @override
  late final TextSelectionThemeData textSelectionTheme = TextSelectionThemeData(
    cursorColor: appColors.textFieldCursorColor,
  );

  @override
  late final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      vertical: Sizes.textFieldPaddingV14,
      horizontal: Sizes.textFieldPaddingH14,
    ),
    isDense: true,
    filled: true,
    fillColor: appColors.textFieldFillColor,
    hintStyle: TextStyle(
      fontSize: Sizes.font12,
      color: appColors.textFieldHintColor,
    ),
    prefixIconColor: appColors.textFieldPrefixIconColor,
    suffixIconColor: appColors.textFieldSuffixIconColor,
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.textFieldR12),
      ),
      borderSide: BorderSide(
        color: appColors.textFieldBorderColor,
        width: 0.8,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.textFieldR12),
      ),
      borderSide: BorderSide(
        color: appColors.textFieldEnabledBorderColor,
        width: 0.8,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.textFieldR12),
      ),
      borderSide: BorderSide(
        color: appColors.textFieldFocusedBorderColor,
        width: 1.2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.textFieldR12),
      ),
      borderSide: BorderSide(
        color: appColors.textFieldErrorBorderColor,
        width: 0.8,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.textFieldR12),
      ),
      borderSide: BorderSide(
        color: appColors.textFieldErrorBorderColor,
        width: 0.8,
      ),
    ),
    errorStyle: TextStyle(
      color: appColors.textFieldErrorStyleColor,
      fontSize: Sizes.font12,
    ),
  );

  @override
  late final IconThemeData iconTheme = IconThemeData(color: appColors.iconColor);

  @override
  late final ButtonThemeData buttonTheme = ButtonThemeData(
    buttonColor: appColors.buttonColor,
    disabledColor: appColors.buttonDisabledColor,
  );

  @override
  late final ToggleButtonsThemeData toggleButtonsTheme = ToggleButtonsThemeData(
    borderColor: appColors.toggleButtonBorderColor,
    selectedColor: appColors.toggleButtonSelectedColor,
    disabledColor: appColors.toggleButtonDisabledColor,
  );

  @override
  late final CardTheme cardTheme = CardTheme(
    color: appColors.cardBGColor,
    shadowColor: appColors.cardShadowColor,
  );

  @override
  late final CustomColors customColors = appColors.customColors;
}
