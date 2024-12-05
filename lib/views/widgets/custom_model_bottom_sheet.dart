import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:third_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:third_note_app/views/widgets/add_note_form.dart';

class CustomModelBottomSheet extends StatelessWidget {
  const CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                ),
              );
            }

            if (state is AddNoteSuccess) {
              BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
                child: AbsorbPointer(
                    absorbing: state is AddNoteLoading ? true : false,
                    child: const AddNoteForm()));
          },
        ),
      ),
    );
  }
}
