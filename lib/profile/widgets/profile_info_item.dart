import 'package:flutter/material.dart';

class ProfileInfoItem extends StatelessWidget {
  const ProfileInfoItem({
    super.key,
    required this.title,
    this.icon = Icons.abc,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 33),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
          ),
        ],
      ),
    );
  }
}
