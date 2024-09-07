import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 16,
        end: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child:const  SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
