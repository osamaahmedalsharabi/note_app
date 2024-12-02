import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/note_item_widget.dart';

class NoteListViewWidget extends StatelessWidget {
  const NoteListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const NoteItemWidget();
        },
      ),
    );
  }
}
