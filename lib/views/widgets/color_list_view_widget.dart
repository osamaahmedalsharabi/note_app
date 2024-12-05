import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_note_app/cubit/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: color,
      child: isActive
          ? const Icon(
              Icons.done,
              color: Colors.black,
              size: 28,
            )
          : null,
    );
  }
}

class ColorListViewWidget extends StatefulWidget {
  const ColorListViewWidget({super.key});

  @override
  State<ColorListViewWidget> createState() => _ColorListViewWidgetState();
}

class _ColorListViewWidgetState extends State<ColorListViewWidget> {
  int? currentIndex;
  List<Color> colors = [
    const Color(0xffE6EBE0),
    const Color(0xff5CA4A9),
    const Color(0xff9BC1BC),
    const Color(0xffF4F1BB),
    const Color(0xffED6A5A),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
