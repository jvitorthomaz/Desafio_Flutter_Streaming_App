import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final double width;
  final  double height;
  final Color color;
  final IconData? icon;
  final String imgSocialLogo;

  const RoundedButtonWidget({
    required this.onTap,
    required this.width,
    required this.height,
    required this.color,
    this.icon,
    required this.imgSocialLogo, 
    super.key, 
  });

  static const _borderRadius = BorderRadius.all(Radius.circular(30));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: _borderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imgSocialLogo, 
              width: 30, 
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
