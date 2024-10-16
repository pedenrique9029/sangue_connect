import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff942600),
      surfaceTint: Color(0xffab350f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color.fromARGB(255, 237, 81, 81),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff8e4c39),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffb49f),
      onSecondaryContainer: Color(0xff5c2515),
      tertiary: Color(0xffa50007),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdc3127),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color.fromARGB(255, 238, 218, 212),
      onSurface: Color(0xff251915),
      onSurfaceVariant: Color(0xff59413b),
      outline: Color(0xff8c7169),
      outlineVariant: Color(0xffe0bfb7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d29),
      inversePrimary: Color(0xffffb5a0),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff3b0900),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff862200),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff390b01),
      secondaryFixedDim: Color(0xffffb5a0),
      onSecondaryFixedVariant: Color(0xff713524),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff410001),
      tertiaryFixedDim: Color(0xffffb4a9),
      onTertiaryFixedVariant: Color(0xff930005),
      surfaceDim: Color(0xffedd5cf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xffffe9e4),
      surfaceContainerHigh: Color(0xfffbe3dd),
      surfaceContainerHighest: Color(0xfff6ddd7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff802000),
      surfaceTint: Color(0xffab350f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc74923),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6c3220),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa9624d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff8c0004),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdc3127),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff251915),
      onSurfaceVariant: Color(0xff543d37),
      outline: Color(0xff735952),
      outlineVariant: Color(0xff90746d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d29),
      inversePrimary: Color(0xffffb5a0),
      primaryFixed: Color(0xffc94b24),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xffa8330c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa9624d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8b4a37),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffdc3127),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xffb81211),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffedd5cf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xffffe9e4),
      surfaceContainerHigh: Color(0xfffbe3dd),
      surfaceContainerHighest: Color(0xfff6ddd7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff460d00),
      surfaceTint: Color(0xffab350f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff802000),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff421204),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c3220),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4e0001),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8c0004),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff321f1a),
      outline: Color(0xff543d37),
      outlineVariant: Color(0xff543d37),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d29),
      inversePrimary: Color(0xffffe7e1),
      primaryFixed: Color(0xff802000),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff591300),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c3220),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff501c0d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8c0004),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff620002),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffedd5cf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xffffe9e4),
      surfaceContainerHigh: Color(0xfffbe3dd),
      surfaceContainerHighest: Color(0xfff6ddd7),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb5a0),
      surfaceTint: Color(0xffffb5a0),
      onPrimary: Color(0xff5f1500),
      primaryContainer: Color(0xffa6320b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffffb5a0),
      onSecondary: Color(0xff552010),
      secondaryContainer: Color(0xff652c1b),
      onSecondaryContainer: Color(0xffffc3b2),
      tertiary: Color(0xffffb4a9),
      onTertiary: Color(0xff690002),
      tertiaryContainer: Color(0xffcf271f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1c110d),
      onSurface: Color(0xfff6ddd7),
      onSurfaceVariant: Color(0xffe0bfb7),
      outline: Color(0xffa88a82),
      outlineVariant: Color(0xff59413b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff6ddd7),
      inversePrimary: Color(0xffab350f),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff3b0900),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff862200),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff390b01),
      secondaryFixedDim: Color(0xffffb5a0),
      onSecondaryFixedVariant: Color(0xff713524),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff410001),
      tertiaryFixedDim: Color(0xffffb4a9),
      onTertiaryFixedVariant: Color(0xff930005),
      surfaceDim: Color(0xff1c110d),
      surfaceBright: Color(0xff453632),
      surfaceContainerLowest: Color(0xff160b08),
      surfaceContainerLow: Color(0xff251915),
      surfaceContainer: Color(0xff291d19),
      surfaceContainerHigh: Color(0xff352723),
      surfaceContainerHighest: Color(0xff40312d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbba7),
      surfaceTint: Color(0xffffb5a0),
      onPrimary: Color(0xff310700),
      primaryContainer: Color(0xffef663d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbba7),
      onSecondary: Color(0xff310700),
      secondaryContainer: Color(0xffca7d67),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffbab0),
      onTertiary: Color(0xff370001),
      tertiaryContainer: Color(0xffff5545),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1c110d),
      onSurface: Color(0xfffff9f8),
      onSurfaceVariant: Color(0xffe5c4bb),
      outline: Color(0xffbb9c94),
      outlineVariant: Color(0xff997d75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff6ddd7),
      inversePrimary: Color(0xff892200),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff280500),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff691800),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff280500),
      secondaryFixedDim: Color(0xffffb5a0),
      onSecondaryFixedVariant: Color(0xff5c2515),
      tertiaryFixed: Color(0xffffdad5),
      onTertiaryFixed: Color(0xff2d0000),
      tertiaryFixedDim: Color(0xffffb4a9),
      onTertiaryFixedVariant: Color(0xff740003),
      surfaceDim: Color(0xff1c110d),
      surfaceBright: Color(0xff453632),
      surfaceContainerLowest: Color(0xff160b08),
      surfaceContainerLow: Color(0xff251915),
      surfaceContainer: Color(0xff291d19),
      surfaceContainerHigh: Color(0xff352723),
      surfaceContainerHighest: Color(0xff40312d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb5a0),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbba7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbba7),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffbab0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1c110d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffe5c4bb),
      outlineVariant: Color(0xffe5c4bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff6ddd7),
      inversePrimary: Color(0xff541200),
      primaryFixed: Color(0xffffe0d8),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbba7),
      onPrimaryFixedVariant: Color(0xff310700),
      secondaryFixed: Color(0xffffe0d8),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbba7),
      onSecondaryFixedVariant: Color(0xff310700),
      tertiaryFixed: Color(0xffffe0db),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffbab0),
      onTertiaryFixedVariant: Color(0xff370001),
      surfaceDim: Color(0xff1c110d),
      surfaceBright: Color(0xff453632),
      surfaceContainerLowest: Color(0xff160b08),
      surfaceContainerLow: Color(0xff251915),
      surfaceContainer: Color(0xff291d19),
      surfaceContainerHigh: Color(0xff352723),
      surfaceContainerHighest: Color(0xff40312d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
