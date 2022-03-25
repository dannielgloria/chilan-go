import 'package:app/data/descriptions.dart';
import 'package:app/model/location.dart';

List<Location> locations = [
  Location(
    name: 'ATCOASTAL',
    urlImage: 'assets/sea.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 791187',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'EAST LNG 17',
    descriptions: Descriptions.allDescriptions,
  ),
  Location(
    name: 'SYRACUSE',
    urlImage: 'assets/mountain.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 11641',
    starRating: 4,
    latitude: 'SOUTH LAT 14',
    longitude: 'EAST LNG 27',
    descriptions: Descriptions.allDescriptions,
  ),
  Location(
    name: 'OCEANIC',
    urlImage: 'assets/sea2.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 791187',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'WEST LNG 08',
    descriptions: Descriptions.allDescriptions,
  ),
  Location(
    name: 'MOUNTAINOUS',
    urlImage: 'assets/mountain2.jpg',
    addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
    addressLine2: 'NO. 791187',
    starRating: 4,
    latitude: 'SOUTH LAT 39',
    longitude: 'WEST LNG 41',
    descriptions: Descriptions.allDescriptions,
  ),
];
