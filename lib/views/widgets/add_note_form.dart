import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:third_note_app/models/note_model.dart';
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
                String formatDate =
                    "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}";
                BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: formatDate,
                    color: Colors.green.value));
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
