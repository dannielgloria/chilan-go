import 'package:app/data/hero_tag.dart';
import 'package:app/model/location.dart';
import 'package:app/widgets/happy_level.dart';
import 'package:app/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class DetailedDescriptionLoc extends StatelessWidget {
  final Location location;

  const DetailedDescriptionLoc({
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(
              tag: HeroTag.addressLine1(location),
              child: Text(location.addressLine1),
            ),
            const SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.addressLine2(location),
              child: Text(location.addressLine2),
            ),
            const SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.stars(location),
              child: HappyWidget(stars: location.starRating),
            ),
          ],
        ),
      );
}
