import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:third_note_app/views/widgets/custom_button_widget.dart';
import 'package:third_note_app/views/widgets/custom_text_field_widget.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          CustomTextFieldWidget(
            onSaved: (data) {
              title = data;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFieldWidget(
            onSaved: (data) {
              subtitle = data;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          const Spacer(),
          CustomButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
