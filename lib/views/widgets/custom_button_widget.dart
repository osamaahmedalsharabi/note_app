import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/constants.dart';
import 'package:third_note_app/cubit/add_note_cubit/add_note_cubit.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlocBuilder<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          return Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimayColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: state is AddNoteLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : const Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
