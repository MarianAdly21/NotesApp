import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_button.dart';

import 'package:notes_app/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            CustomTextField(
              hitText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hitText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
