import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26,),
      child: const Column(
        children: [
          SizedBox(height:50),
          CustomAppBar(),
    
        ],
    
      ),
    );
  }
}
class NotesItem extends StatelessWidget {
  const NotesItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [
          ListTile(
            title: Text('Flutter'),
          )
        ],
      ),
    );
  }
}