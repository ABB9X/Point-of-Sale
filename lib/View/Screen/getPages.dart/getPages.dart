import 'package:get/get.dart';
import 'package:poin_of_sale/View/Screen/home_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: '/',
    page: () =>  HomeScreen(),
  ),
  
];
