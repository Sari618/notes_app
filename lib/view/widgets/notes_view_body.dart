import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 26,
      ),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(),
          NotesItem(),
        ],
      ),
    );
  }
}

