import 'package:flutter/material.dart';
import 'package:todoapp/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      content: Container(
        height: 140,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add new task',
                hintStyle: TextStyle(fontSize: 20, color: Colors.black)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              MyButton(text: 'save', onPressed: onSave),

              const SizedBox(
                width: 17,
              ),
              //cancel button
              MyButton(text: 'cancel', onPressed: onCancel)
            ],
          )
        ]),
      ),
    );
  }
}
