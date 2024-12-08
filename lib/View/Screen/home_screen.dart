import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:poin_of_sale/View/Screen/WelcomeScreen.dart';
import 'package:poin_of_sale/View/style/SizeApp/ScreenSize.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  // final c = Get.put(LanguageController());
  @override
  Widget build(BuildContext context) {
    return  NavigationView(
          pane: NavigationPane(
     
            size: NavigationPaneSize(
              openMaxWidth: context.setWidth(190) ,
              openMinWidth: context.setWidth(100) ,
            ),
            items: [
              PaneItem(
                title: Text("Home"),
                icon: const Icon(Icons.add),
                body: WelcomeScreen(),
              ),
              
            
              
             
            ],
            onChanged: (value) {
              // controller.selected(value);
            },
          ),
        );
  }
}
