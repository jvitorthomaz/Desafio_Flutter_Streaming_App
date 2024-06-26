import 'package:asyncstate/asyncstate.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/app_nav_global_key.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/app_theme.dart';
import 'package:desafio_flutter_streaming_app/src/core/ui/widgets/app_loader.dart';
import 'package:desafio_flutter_streaming_app/src/features/auth/login/login_page.dart';
import 'package:desafio_flutter_streaming_app/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const AppLoader(),
      builder: (AsyncNavigatorObserver){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App',
          theme: AppTheme.themeData,

          navigatorObservers: [AsyncNavigatorObserver],
          navigatorKey: AppNavGlobalKey.instance.navKey,

          routes: {
            '/':(_) => const SplashPage(),
            '/auth/login': (_) => const LoginPage(),
            //'/auth/login/forgotPassword': (_) => const ForgotPasswordPage(),
            // '/auth/login/register': (_) => const UserRegisterPage(),

            // '/home': (_) => const HomeAdmPage(),

            // '/myProfile': (_) => const MyProfilePage(),
            // '/updatePassword': (_) => const UserUpdatePasswordPage(),
            // '/updateProfile': (_) => const ProfileUpdatePage(),
            // '/profilePicture':(_) => const ProfilePicturePage(),
            
          },
        );
      }
    );
  }
}
