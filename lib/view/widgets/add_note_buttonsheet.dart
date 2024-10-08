import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
      child: const Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Title',

          ),
          SizedBox(height: 16,)
,          CustomTextField(hint: 'Content',
          maxLines: 5,
          ),
        ],
      ),
    ); 
  }
}