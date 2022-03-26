import 'package:app/data/descriptions.dart';
import 'package:app/model/location.dart';

List<Location> locations = [
  Location(
    name: 'Callejón del aguacate',
    urlImage: 'assets/locations/callejon_aguacate.jpeg',
    addressLine1: 'Aguacate 19-31, Santa Catarina, Coyoacán, 04010',
    addressLine2: 'Ciudad de México, CDMX',
    starRating: 5,
    latitude: 'LAT 19.34, ',
    longitude: 'LNG -99.17',
    descriptions: Descriptions.desc1,
  ),
  Location(
    name: 'Museo Frida Kahlo',
    urlImage: 'assets/locations/frida.png',
    addressLine1: 'Londres 247, Del Carmen, Coyoacán, 04100',
    addressLine2: 'Ciudad de México, CDMX',
    starRating: 4,
    latitude: 'LAT 19.35',
    longitude: 'LNG -99.16',
    descriptions: Descriptions.desc2,
  ),
  Location(
    name: 'Pulquería Las Duelistas',
    urlImage: 'assets/locations/pulque.jpeg',
    addressLine1: 'Aranda 28, Colonia Centro, Centro, Cuauhtémoc, 06400',
    addressLine2: 'Ciudad de México, CDMX',
    starRating: 5,
    latitude: 'LAT 19.43 ',
    longitude: 'LNG -99.14',
    descriptions: Descriptions.desc3,
  ),
  Location(
    name: 'Jardín Pushkin',
    urlImage: 'assets/locations/pushkin.jpeg',
    addressLine1: 'Av. Cuauhtémoc 104, Roma Nte., Cuauhtémoc, 06700',
    addressLine2: 'Ciudad de México, CDMX',
    starRating: 4,
    latitude: 'LAT 19.42',
    longitude: 'LNG -99.15',
    descriptions: Descriptions.desc4,
  ),
];
