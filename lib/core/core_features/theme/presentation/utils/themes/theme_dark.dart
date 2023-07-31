import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../presentation/styles/styles.dart';
import '../colors/app_colors_dark.dart';
import '../colors/custom_colors.dart';
import '../colors/i_app_colors.dart';
import 'i_theme.dart';

class ThemeDark implements ITheme {
  @override
  final ThemeData baseTheme = ThemeData.dark();

  @override
  final IAppColors appColors = AppColorsDark();

  @override
  late final Color primaryColor = appColors.primaryColor;

  @override
  late final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: appColors.primary,
    secondary: appColors.secondary,
  );

  @override
  late final AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: appColors.appBarBGColor,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      //For Android
      statusBarColor: appColors.statusBarColor,
      systemNavigationBarColor: appColors.navBarColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    elevation: Sizes.appBarElevation,
  );

  @override
  late final Color scaffoldBackgroundColor = appColors.scaffoldBGColor;

  @override
  late final NavigationBarThemeData navigationBarTheme = NavigationBarThemeData(
    backgroundColor: appColors.navBarColor,
    surfaceTintColor: Colors.transparent,
    shadowColor: appColors.navBarColor,
    indicatorColor: Colors.blue.shade100,
    labelTextStyle: MaterialStatePropertyAll(
      TextStyles.navigationLabel(appColors.customColors.font12Color!),
    ),
    elevation: Sizes.navBarElevation,
  );

  @override
  late final NavigationRailThemeData navigationRailTheme = NavigationRailThemeData(
    backgroundColor: appColors.navBarColor,
    elevation: Sizes.navBarElevation,
  );

  @override
  late final TextTheme textTheme = baseTheme.textTheme.copyWith(
    titleMedium: TextStyles.titleMedium(appColors.textFieldSubtitle1Color),
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
    contentPadding: Insets.inputDecorationContentPadding,
    isDense: true,
    filled: true,
    fillColor: appColors.textFieldFillColor,
    hintStyle: TextStyles.inputDecorationHint(appColors.textFieldHintColor),
    prefixIconColor: appColors.textFieldPrefixIconColor,
    suffixIconColor: appColors.textFieldSuffixIconColor,
    border: Borders.inputDecorationBorder(appColors.textFieldBorderColor),
    enabledBorder: Borders.inputDecorationBorder(appColors.textFieldEnabledBorderColor),
    focusedBorder: Borders.inputDecorationBorder(appColors.textFieldFocusedBorderColor, 1.2),
    errorBorder: Borders.inputDecorationBorder(appColors.textFieldErrorBorderColor),
    focusedErrorBorder: Borders.inputDecorationBorder(appColors.textFieldErrorBorderColor),
    errorStyle: TextStyles.inputDecorationError(appColors.textFieldErrorStyleColor),
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
  late final DialogTheme dialogTheme = DialogTheme(
    backgroundColor: appColors.scaffoldBGColor,
    titleTextStyle: TextStyles.dialogTitle(appColors.customColors.font18Color!),
    contentTextStyle: TextStyles.dialogContent(appColors.customColors.font16Color!),
  );

  @override
  late final CustomColors customColors = appColors.customColors;
}
