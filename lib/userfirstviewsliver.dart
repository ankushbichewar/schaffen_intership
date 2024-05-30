import 'package:flutter/material.dart';

class UserfirstSliverAppBar extends StatelessWidget {
  const UserfirstSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 250.0,
        child: Image.asset(
          "assets/image.png", // Replace with your image URL
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
