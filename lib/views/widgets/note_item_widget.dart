import 'package:flutter/material.dart';
import 'package:third_note_app/views/edit_note_view.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNoteView(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(
                      "Start your career with flutter and enjoy the UI that's made ",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      )),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 32,
                    )),
              ),
              const Text("May , 21- 2022",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
