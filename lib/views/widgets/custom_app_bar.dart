import 'package:flutter/material.dart';
import 'package:third_note_app/views/widgets/custom_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  const CustomAppBar({super.key, required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          CustomIconWidget(
            onTap: onTap,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
