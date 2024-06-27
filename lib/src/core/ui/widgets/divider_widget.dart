import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        thickness: 1, 
        color: AppColors.colorGrey
      )
    );
  }
}
