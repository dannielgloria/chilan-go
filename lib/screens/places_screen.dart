import 'package:app/style/my_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  static const images = <String>[
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Leyenda_del_Callej%C3%B3n_del_Aguacate.jpg/1200px-Leyenda_del_Callej%C3%B3n_del_Aguacate.jpg',
    'https://elmoro.mx/wp-content/uploads/2017/07/LGM5725-1.jpg',
    'https://topadventure.com/__export/1603397122744/sites/laverdad/img/2020/10/22/casa_museo_frida_kahlo.jpg_182777833.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (context, index) {
        final image = images[index];
        return Image.asset(
          image,
          fit: BoxFit.fill,
        );
      },
      indicatorLayout: PageIndicatorLayout.COLOR,
      autoplay: true,
      itemCount: images.length,
      pagination: const SwiperPagination(),
      control: const SwiperControl(),
    );
  }
}
