import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:third_note_app/views/widgets/custom_app_bar.dart';
import 'package:third_note_app/views/widgets/note_list_view_widget.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          NoteListViewWidget(),
        ],
      ),
    );
  }
}
