import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:poin_of_sale/Helper/Log/LogApp.dart';
import 'package:poin_of_sale/Helper/Service/initService.dart';
import 'package:poin_of_sale/Helper/Translation/LanguageTranslation.dart';
import 'package:poin_of_sale/Helper/Translation/TranslationController.dart';
import 'package:poin_of_sale/View/Screen/getPages.dart/getPages.dart';
import 'package:poin_of_sale/View/Screen/home_screen.dart';
import 'package:poin_of_sale/View/style/SizeApp/ScreenSize.dart';
import 'package:poin_of_sale/View/style/SizeApp/SizeBuilder.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      // initialize the app Service

      await InitService.instance.initService();

      runApp(
        const MyApp(),
        // DevicePreview(
        //   enabled: !kReleaseMode,
        //   builder: (context) => MyApp(),
        //
        // Wrap your app
        // ),
      );
    },
    (
      error,
      stack,
    ) =>
        logError(
      error.toString(),
    ),
  );
  // if it's not on the web, windows or android,
  // load the accent color
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final c = Get.put(LanguageController());
    return SizeBuilder(
      baseSize: const Size(380, 720),
      height: context.screenHeight,
      width: context.screenWidth,
      child: GetMaterialApp(
        locale: c.language,
        translations: Words(),
        debugShowCheckedModeBanner: false,
        getPages: getPages,
        title: 'Flutter Demo',
       
        home: FluentApp(
          debugShowCheckedModeBanner: false,
          theme: FluentThemeData(),
          scrollBehavior: const ScrollBehavior(),
          home: HomeScreen(),
        ),
      ),
    );
  }
}
