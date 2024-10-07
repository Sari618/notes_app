import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 26,
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

