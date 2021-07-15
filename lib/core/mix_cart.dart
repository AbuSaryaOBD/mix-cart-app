import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mix_cart_app/core/routes.dart';
import 'package:mix_cart_app/splash_screen/splash_screen.dart';
import 'package:mix_cart_app/constants/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MixCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en'),
            const Locale('ar'),
          ],
          title: 'Mix Cart',
          theme: theme(),
          initialRoute: SplashPage.routeName,
          routes: routes,
        );
      },
    );
  }
}
