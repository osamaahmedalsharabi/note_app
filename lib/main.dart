import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:third_note_app/models/note_model.dart';
import 'package:third_note_app/views/home_view.dart';

void main() async {
  await hiveMethod();
  runApp(const NoteApp());
}

Future<void> hiveMethod() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Hive.openBox<NoteModel>("note_box");
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const HomeView(),
    );
  }
}
