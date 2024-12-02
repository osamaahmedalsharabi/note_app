import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_model_bottom_sheet.dart';
import 'package:third_note_app/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                )),
                context: context,
                builder: (context) {
                  return const CustomModelBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        body: const HomeViewBody(),
      ),
    );
  }
}

