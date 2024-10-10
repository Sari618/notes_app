import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:kPrimaryColor ,
      onSaved: onSaved,
      validator: (value){
        if (value?.isEmpty ?? true){
          return "Field is requierd";
        }else { return null;}
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,  
        
      // hintStyle:const TextStyle(color: kPrimaryColor),
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
