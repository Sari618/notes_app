import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_button.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteFourm(),
      ),
    );
  }
}

class AddNoteFourm extends StatefulWidget {
  const AddNoteFourm({
    super.key,
  });

  @override
  State<AddNoteFourm> createState() => _AddNoteFourmState();
}

class _AddNoteFourmState extends State<AddNoteFourm> {
  final GlobalKey<FormState> formKey= GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:  formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value){
              title=value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value){
              subTitle=value;}
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap:(){
              if (formKey.currentState! .validate()) {
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
