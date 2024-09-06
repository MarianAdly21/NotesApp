import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [CustomTextField()],
      ),
    );
  }
}
