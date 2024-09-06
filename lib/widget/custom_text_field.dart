import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
            cursorColor: kPrimeryColor,
            decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(
                  color: kPrimeryColor.withOpacity(.8),
                  fontSize: 23,
                ),
                focusedBorder: buildBorder(kPrimeryColor),
                enabledBorder: buildBorder(),
                border: buildBorder()),
          );
  }






   OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}