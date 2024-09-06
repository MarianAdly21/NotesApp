import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: [
            CustomAppBar(
              title: "Notes",
              icon: Icons.search,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: NotesListView(),
            )
          ],
        ),
      ),
    );
  }
}
