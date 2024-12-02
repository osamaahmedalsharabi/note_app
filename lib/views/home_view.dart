import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        body: const HomeViewBody(),
      ),
    );
  }
}
