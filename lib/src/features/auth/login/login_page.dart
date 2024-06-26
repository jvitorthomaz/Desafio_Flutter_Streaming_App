import 'package:desafio_flutter_streaming_app/src/core/constants/globalConst.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/defaults_snackbar/show_snackbar.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/helpers/forms_helper.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/helpers/messages_helper.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/login/login_state.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/login/login_vm.dart';
import 'package:desafio_flutter_streaming_app/src/repositories/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends ConsumerStatefulWidget {

  const LoginPage({ super.key });

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {

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
    // final LoginVm(:login) = ref.watch(loginVmProvider.notifier);
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    // ref.listen(loginVmProvider, (_, state) {
    //   switch (state) {
    //     case LoginState(status: LoginStateStatus.initial):
    //       break;

    //     case LoginState(status: LoginStateStatus.error, errorMessage: final errorMessage?):
    //       MessagesHelper.showErrorSnackBar(errorMessage, context);


    //     case LoginState(status: LoginStateStatus.error):
    //       MessagesHelper.showErrorSnackBar('Ocorreu um erro ao realizar a login', context);


    //     case LoginState(status: LoginStateStatus.sucess):
    //       Navigator.of(context).pushNamedAndRemoveUntil('/home/admUser', (route) => false);
    //       break;
    //   }
    // });

    return Scaffold(
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
            //.all(30.0),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Image.asset(
                        AppImages.imgLogo, 
                        width: 32, 
                        height: 32,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Welcome Back', 
                            style: TextStyle(
                              color: AppColors.colorWhite, 
                              fontSize: 24, 
                              fontWeight: FontWeight.bold
                            ),
                          ),

                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Look who is here!', 
                            style: TextStyle(
                              color: AppColors.colorGrey, 
                              fontSize: 14, 
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      
                  
                  
                      Column(
                        children: [
                          TextFormField(
                            onTapOutside: (_) => context.unfocus(),
                            validator: Validatorless.multiple([
                              Validatorless.required('O E-mail é obrigatório'),
                              Validatorless.email('O E-mail inserido é inválido'), 
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
                          const SizedBox(
                            height: 20,
                          ),
                      
                      
                          TextFormField(
                            onTapOutside: (_) => context.unfocus(),
                            validator: Validatorless.multiple([
                              Validatorless.required('A Senha é obrigatória'),
                              Validatorless.min(6, 'A Senha deve conter pelo menos 6 caracteres'), 
                            ]),
                            obscureText: obscure, //true,
                            controller: passwordEC,
                            decoration: InputDecoration(
                              label: Text(
                                'Password', 
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400 ,color: AppColors.colorGrey),
                              ),
                              hintText: 'Password',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              labelStyle: TextStyle(color: AppColors.colorGrey),
                              hintStyle: TextStyle(color: AppColors.colorGrey),
                              suffixIcon: IconButton(
                                onPressed: () => setState(() => obscure = !obscure),
                                icon: Icon(
                                  obscure ? Icons.visibility : Icons.visibility_off,
                                  color: AppColors.colorGrey,
                                )
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 5,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () async{
                                  //await Navigator.of(context).pushNamed('/auth/login/forgotPassword',);
                                },
                                child: const Text(
                                  'Forgot password?', 
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700 ,color: AppColors.primaryColor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),  

                      // const SizedBox(
                      //    height: 15,
                      // ),
                  
                  
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text(
                      //     'Esqueceu a senha?', 
                      //     style: TextStyle(fontSize: 14, color: AppColors.colorBlack),
                      //   )
                      // ),
                          
                    
                          
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(208, 41.5),
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
                        child: Text('Login'),
                      ),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Or Sign in With',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.colorGrey),
                          )
                        ],
                      ),

                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.colorGrey),
                          ),                              
                          InkWell(
                            onTap: () {
                              //handleForgotPassword(height, width);
                            },
                            child: const Text(
                              'Sign Up!', 
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

  handleForgotPassword(height, width) {

    // return Theme(
    //       data: ThemeData(dialogBackgroundColor: Colors.white),
    String email = emailEC.text;
    
    return showDialog(
      context: context,
      builder: (context) {
        TextEditingController redefincaoSenhaController =
          TextEditingController(text: email);
        var height = MediaQuery.of(context).size.height;
        //var width = MediaQuery.of(context).size.width;
        return SizedBox(
          child: AlertDialog(
            insetPadding: EdgeInsets.all(10),
            backgroundColor:Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Redefinição de senha",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.colorBlack,
                  ),
                ),
                IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.close,color: AppColors.colorBlack))
              ],
            ),
            content: SizedBox(
              //width: 300,
              height: 70,
              width: width *0.9,
              child: Column(
                children: [
                  const SizedBox(
                     height: 10,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.colorBlack,
                    ),
                    controller: redefincaoSenhaController,
                    decoration: const InputDecoration(
                      label: Text("Confirme seu e-mail"),
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ],
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            actions: [
              Column(
                children: [
                  const SizedBox(
                     height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                    ),
                    onPressed: (){
                        authRepository
                          .redefinicaoSenha(email: redefincaoSenhaController.text)
                          .then((String? erro) {
        
                        if (erro == null) {
                          showSnackBar(
                            context: context,
                            mensagem: "E-mail de redefinição enviado!",
                            isErro: false,
                          );
        
                        } else {
                          showSnackBar(context: context, mensagem: erro);
                        }
        
                        Navigator.pop(context);
                      });
                     
        
                    }, 
                    child: Text(
                    'Redefinir Senha', style: TextStyle(
                        fontSize: 16,)
                    
                    ),
                  ),
                  const SizedBox(
                     height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      authRepository
                          .redefinicaoSenha(email: redefincaoSenhaController.text)
                          .then((String? erro) {
                        if (erro == null) {
                          showSnackBar(
                            context: context,
                            mensagem: "E-mail de redefinição enviado!",
                            isErro: false,
                          );
                        } else {
                          showSnackBar(context: context, mensagem: erro);
                        }
        
                        Navigator.pop(context);
                      });
                    },
                    child: const Text(
                      "Voltar",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.colorBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
        
      },
    );   
  }
}
