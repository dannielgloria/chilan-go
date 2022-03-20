import 'package:app/style/my_colors.dart';
import 'package:app/widgets/bar_code_scanner_controller.dart';
import 'package:app/widgets/bar_code_scanner_without_controller.dart';
import 'package:flutter/material.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: BarcodeScannerWithController(),
    );
  }
}
