import 'package:flutter/material.dart';

class HappyWidget extends StatelessWidget {
  final int stars;

  const HappyWidget({
    required this.stars,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allStars = List.generate(stars, (index) => index);

    return Row(
      children: allStars
          .map((star) => Container(
                margin: const EdgeInsets.only(right: 4),
                child: const Icon(Icons.emoji_emotions,
                    size: 18, color: Colors.yellow),
              ))
          .toList(),
    );
  }
}
