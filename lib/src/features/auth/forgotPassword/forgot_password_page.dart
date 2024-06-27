import 'package:desafio_flutter_streaming_app/src/core/constants/globalConst.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/defaults_snackbar/show_snackbar.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/helpers/forms_helper.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/helpers/messages_helper.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/widgets/divider_widget.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/login/login_state.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/login/login_vm.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/widgets/social_buttons_widget.dart';
import 'package:desafio_flutter_streaming_app/src/repositories/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:validatorless/validatorless.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {

  const ForgotPasswordPage({ super.key });

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {

  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  bool obscure = true;

  AuthRepositoryImpl authRepository = AuthRepositoryImpl();

  @override
  void dispose(){
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 100, 30, 50),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            AppImages.imgLogo, 
                            width: 32, 
                            height: 32,
                          ),

                          const SizedBox(
                            height: 50,
                          ),

                          const Text(
                            'Forgot Password?', 
                            style: TextStyle(
                              color: AppColors.colorWhite, 
                              fontSize: 24, 
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Enter the email address you used when you joined and we\'ll send you instructions to reset your password.', 
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.colorGrey, 
                              fontSize: 14, 
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            onTapOutside: (_) => context.unfocus(),
                            validator: Validatorless.multiple([
                              Validatorless.required('Email is mandatory'),
                              Validatorless.email('The email entered is invalid'), 
                            ]),
                            controller: emailEC,
                            decoration: const InputDecoration(
                              label: Text(
                                'Email',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400 ,color: AppColors.colorGrey),
                              ),
                              hintText: 'Email',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: AppColors.colorGrey),
                              hintStyle: TextStyle(color: AppColors.colorGrey),
                              
                            ),
                          ),

                          
                        ],
                      ), 

                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [               
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(240, 42),
                            ),
                            onPressed: (){
                              // switch (formKey.currentState?.validate()) {
                              //   case (false || null):
                              //   MessagesHelper.showErrorSnackBar('O Campos digitados estão inválidos', context);
                              //     break;
                              //   case true:
                              //     login(emailEC.text, passwordEC.text);
                              // }
                              
                            }, 
                            child: const Text('Send reset instructions'),
                          ), 
                          const SizedBox(
                            height: 15,
                          ),             
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Back', 
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700 ,color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  )
                )
              ],
            ),
          ),
        )
      //),
    );
  }

}
