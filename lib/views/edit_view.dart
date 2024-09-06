import 'package:flutter/material.dart';
import 'package:notes_app/widget/edit_note_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
