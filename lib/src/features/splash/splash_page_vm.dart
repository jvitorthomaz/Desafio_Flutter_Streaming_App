import 'package:desafio_flutter_streaming_app/src/core/constants/local_storage_keys.dart';
import 'package:desafio_flutter_streaming_app/src/models/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_page_vm.g.dart';

enum SplashPageState{
  initial,
  login,
  logged,
  error
}

@riverpod
class SplashPageVm extends _$SplashPageVm {
  @override
  Future<SplashPageState> build() async {
    final preferences = await SharedPreferences.getInstance();

    if (preferences.containsKey(LocalStorageKeys.accessToken)) {
      // ref.invalidate(getMeProvider);
      // ref.invalidate(getAdmPlaceProvider);

      try {
        //final userModel = await ref.watch(getMeProvider.future);

        // return switch (userModel) {
        //   UserModel() => SplashPageState.logged,
        // };

      } catch (e) {
        return SplashPageState.login;
        
      }
    }
    
    return SplashPageState.login;
  }
}
