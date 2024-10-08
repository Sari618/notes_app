import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        hintText: hint,
        hintMaxLines: maxLines,
        hintStyle:const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder:buildBorder(),
        focusedBorder: buildBorder(
          const Color(0xff62FCD7),
        ),
      ),
      
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(
        color:color?? Colors.white,
      )
    );
  }
}
