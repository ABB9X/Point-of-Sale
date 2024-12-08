import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poin_of_sale/Helper/Service/initService.dart';

class LanguageController extends GetxController {
  Locale language = shared.getString("lang") == null
      ? const Locale('en')
      : Locale(
          shared.getString("lang")!,
        );
        

  void changeLanguage(String? language) {
    Locale lang = Locale(language ?? "en");
    shared.setString("lang", language!);
    Get.updateLocale(lang);
  }

}