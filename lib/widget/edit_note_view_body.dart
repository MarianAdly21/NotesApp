import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(hitText: 'Titel'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hitText: "Content",
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
