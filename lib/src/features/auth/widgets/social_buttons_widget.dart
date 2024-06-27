import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/widgets/rounded_button_widget.dart';
import 'package:flutter/material.dart';

class SocialButtonsWidget extends StatelessWidget {
const SocialButtonsWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 10,
      children: [
        RoundedButtonWidget(
          onTap: () => {},
          height: 70,
          width: 70,
          color: AppColors.buttonColor, 
          imgSocialLogo: AppImages.googleLogo,
          
        ),
        RoundedButtonWidget(
          onTap: () => {},
          height: 70,
          width: 70,
          color: AppColors.colorGrey, 
          imgSocialLogo: AppImages.appleLogo,
          
        ),
      ],
    );
  }
}