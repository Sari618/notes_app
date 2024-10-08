import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 26,
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'content',maxLines: 5,)
        ],
      ),
    );
  }
}
