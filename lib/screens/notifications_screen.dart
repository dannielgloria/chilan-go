import 'package:app/style/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: ListView(
        children: [
          Column(
            children: const [
              NotificationCard(
                message:
                    "¿Ya visitaste El callejon del aguacate?, ¡esta muy cerca de ti!",
                image: "assets/icons/place.png",
              ),
              NotificationCard(
                message:
                    "¡No olvides escanear los códigos QR de tus lugares favoritos!",
                image: "assets/icons/notification.png",
              ),
              NotificationCard(
                message:
                    "Recibiste una recompensa por subir de nivel: 10% de descuento en tu próxima visita al Sumoaya",
                image: "assets/icons/gift.png",
              ),
              NotificationCard(
                message:
                    "!Recuerda utilizar las recompensas que ganas durante tu exploración de la CDMX!",
                image: "assets/icons/notification.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.message,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String message;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: MyColors.blue,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(message),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    left: 20,
                  ),
                  child: Text(
                    DateFormat.yMMMd().add_Hms().format(DateTime.now()) +
                        " hrs.",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
