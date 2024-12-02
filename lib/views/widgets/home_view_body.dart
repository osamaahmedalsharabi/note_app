import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_app_bar.dart';
import 'package:third_note_app/views/widgets/note_item_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(),
          NoteItemWidget(),
        ],
      ),
    );
  }
}
