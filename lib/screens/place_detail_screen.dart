import 'package:app/data/hero_tag.dart';
import 'package:app/model/location.dart';
import 'package:app/widgets/descriptions_location.dart';
import 'package:app/widgets/detailed_description_location.dart';
import 'package:app/widgets/hero_widget.dart';
import 'package:app/widgets/latitude_long.dart';
import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  final Location location;
  final Animation animation;

  const PlaceDetailScreen({
    required this.location,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text('INTERESTS'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: Navigator.of(context).pop,
            ),
            const SizedBox(width: 10)
          ],
          leading: const Icon(Icons.search_outlined),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                    child: HeroWidget(
                      tag: HeroTag.image(location.urlImage),
                      child: Image.asset(location.urlImage, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: LatLongWidget(location: location),
                  ),
                ],
              ),
            ),
            DetailedDescriptionLoc(location: location),
            Expanded(
              flex: 5,
              child:
                  DescriptionsWidget(location: location, animation: animation),
            ),
          ],
        ),
      );
}
