import 'package:app/model/description.dart';
import 'package:app/model/location.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;

  static String addressLine1(Location location) =>
      location.name + location.addressLine1;

  static String addressLine2(Location location) =>
      location.name + location.addressLine2;

  static String stars(Location location) =>
      location.name + location.starRating.toString();

  static String avatar(Description description, int position) =>
      description.urlImage + position.toString();
}
