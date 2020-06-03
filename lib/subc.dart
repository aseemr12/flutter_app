import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class SubPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: PinEntryTextField(
      onSubmit: (String pin){
        showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Pin"),
                content: Text('Pin entered is $pin'),
              );
            }
        ); //end showDialog()

      }, // end onSubmit
    ),
  );
}
}