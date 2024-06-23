import 'package:flutter/cupertino.dart';

class GenreBadge extends StatelessWidget {
  final String genre;

  const GenreBadge({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: const TextStyle(
          color: CupertinoColors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
