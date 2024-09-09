import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hitText, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hitText;
  final int maxLines;
  final void Function(String?)? onSaved;
final  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is Required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimeryColor,
      decoration: InputDecoration(
          hintText: hitText,
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
