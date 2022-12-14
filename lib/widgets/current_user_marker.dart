import 'package:flutter/material.dart';

class CurrentUserMarker extends StatelessWidget {
  const CurrentUserMarker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.9),
      ),
      padding: const EdgeInsets.all(5),
      child: const Center(
        child: Icon(
          Icons.person,
          size: 20,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
