import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: NotesItem(),
      );
    });
  }
}
