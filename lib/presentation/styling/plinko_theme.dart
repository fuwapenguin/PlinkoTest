import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:plinko_test/presentation/styling/text_style_theme.dart';

extension WodThemeContext on BuildContext {
  ColorScheme get color => Theme.of(this).colorScheme;
}

class PlinkoTheme {
  static ThemeData get light {
    const colorScheme = ColorScheme.light(
        primary: Color(0xff925091),
        primaryContainer: Color(0xffE4E4E4),
        secondary: Color(0xff8A6F88),
        tertiary: Color(0xffCF98BB),
        surface: Color(0xff262026),
        onSurface: Color(0xffFFFFFF),
        shadow: Color(0x900D3824),
    );
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: TextStyleTheme.primary,
      // fontFamily: GoogleFonts.ubuntu().fontFamily,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  static ThemeData get dark {
    const colorScheme = ColorScheme.dark(
        primary: Colors.deepOrangeAccent,
        surface: Colors.blueGrey,
        // background: Colors.blueGrey,
        shadow: Color(0x900D3824)
    );
    const disabled = Colors.grey;
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: colorScheme,
      primarySwatch: Colors.blueGrey,
      indicatorColor: Colors.blueGrey,
      textTheme: TextStyleTheme.primary,
      // fontFamily: GoogleFonts.ubuntu().fontFamily,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}

extension PlinkoColorsScheme on ColorScheme {
  Color get extraColor => const Color(0xff5B0139);
  List<Color> get primaryGradient {
    return SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.light? [
      const Color(0xffFD96D6),
      const Color(0xffFF77CB),
    ] : [
      const Color(0xffFD96D6),
      const Color(0xffFF77CB),
    ];
  }
  List<Color> get cardGradient {
    return SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.light? [
      const Color(0xff393138),
      const Color(0xff2D272D),
    ] : [
      const Color(0xff393138),
      const Color(0xff2D272D),
    ];
  }
}