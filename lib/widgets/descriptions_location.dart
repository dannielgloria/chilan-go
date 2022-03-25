import 'package:app/data/hero_tag.dart';
import 'package:app/data/locations.dart';
import 'package:app/model/description.dart';
import 'package:app/model/location.dart';
import 'package:app/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class DescriptionsWidget extends StatelessWidget {
  final Location location;
  final Animation animation;

  const DescriptionsWidget({
    required this.location,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      itemCount: location.descriptions.length,
      padding: const EdgeInsets.all(16),
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final description = location.descriptions[index];

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation as dynamic,
              curve: const Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: buildDescription(description),
        );
      });

  Widget buildDescription(Description description) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeroWidget(
                  tag: HeroTag.avatar(description, locations.indexOf(location)),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(description.urlImage),
                  ),
                ),
                Text(
                  description.username,
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(),
                Text(
                  description.date,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                const Icon(Icons.thumb_up_alt_outlined, size: 14)
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description.information,
              style: const TextStyle(color: Colors.black54),
            ),
          ],
        ),
      );
}
