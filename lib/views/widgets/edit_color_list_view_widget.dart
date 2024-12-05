import 'package:flutter/material.dart';
import 'package:third_note_app/models/note_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });
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

class EditColorListViewWidget extends StatefulWidget {
  final NoteModel note;
  const EditColorListViewWidget({super.key, required this.note});

  @override
  State<EditColorListViewWidget> createState() => _EditColorListViewWidgetState();
}

class _EditColorListViewWidgetState extends State<EditColorListViewWidget> {
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
                  widget.note.color = colors[index].value;
                  widget.note.save();
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
