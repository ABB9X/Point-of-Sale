import 'package:flutter/material.dart';
import 'package:poin_of_sale/View/style/Colors/Colors.dart';



// ignore: must_be_immutable
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    super.key,
    this.name,
    this.icons,
    this.text,
    this.input,
  });
  String? name;
  IconData? icons;
  TextEditingController? text;
  TextInputType? input;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: text,
        keyboardType: input == null ? TextInputType.text : TextInputType.number,
        decoration: InputDecoration(
          labelText: name,
          prefixIcon: Icon(
            icons,
            color: ColorUsed.appBarColor,
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorUsed.appBarColor,
            ),
          ),
          labelStyle: TextStyle(
            color: ColorUsed.appBarColor,
          ),
        ),
      ),
    );
  }
}
