
import 'package:asyncstate/asyncstate.dart';

//part 'user_register_vm.g.dart';

enum UserRegisterStateStatus{
  initial, 
  success, 
  error
}

// @riverpod
// class UserRegisterVm extends _$UserRegisterVm{
  
//   @override
//   UserRegisterStateStatus build() => UserRegisterStateStatus.initial;

//   Future<void> register({
//     required String name,
//     required String email,
//     required String password,
//   }) async {
//     final userAdmRegisterService = ref.watch(userAdmRegisterServiceProvider);

//     final userDTO = (
//       name: name,
//       email: email,
//       password: password,
//     );

//     final registerResult = await userAdmRegisterService.execute(userDTO); //.asyncLoader();
    
//     switch(registerResult) {
//       case Success():
//         ref.invalidate(getMeProvider);
//         state = UserRegisterStateStatus.success;

//       case Failure():
//         state = UserRegisterStateStatus.error;  
        
//     }

//   }

// }
