import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

showExceptionDialog(
  BuildContext context, {
  required String content,
  String title = "Um problema aconteceu",
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Row(
          children: [
            const Icon(
              Icons.warning,
              color: AppColors.primaryColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
            ),
          ]
        ),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "OK",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      );
    },
  );
}
