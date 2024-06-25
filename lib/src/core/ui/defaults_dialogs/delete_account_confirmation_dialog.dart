// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class DeleteAccountConfirmationDialog extends ConsumerStatefulWidget {

//     // required BuildContext context,
//     final String email;
//     final int idUserSelected;

//   const DeleteAccountConfirmationDialog({
//     Key? key,
//     required this.email,
//     required this.idUserSelected,
//   }) : super(key: key);

//   @override
//   ConsumerState<DeleteAccountConfirmationDialog> createState() => _DeleteAccountConfirmationDialogState();
// }

// class _DeleteAccountConfirmationDialogState extends ConsumerState<DeleteAccountConfirmationDialog> {

//     TextEditingController senhaConfirmacaoController = TextEditingController();
//     var obscure = true;

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             "ATENÇÃO!",
//             style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.colorRed,
//               ),
//           ),
//           IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.close,color: AppColors.colorBlack))
//         ],
//       ),
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(32))
//       ),
//       content: SizedBox(
//         //width: width,
//         height: 280,
//         child: Column(
//           children: [
//             const Text("Você esta excluindo sua própria conta!\nEssa ação é irreversível e você perderá acesso à sua clínica! \nVocê deseja realmente executar essa operação?\n", style: TextStyle(fontSize: 14, ), textAlign: TextAlign.justify,),
//             const Text(
//               "Para confirmar a remoção da conta, insira sua senha:\n"
//             ),
//             TextFormField(
//               controller: senhaConfirmacaoController,
//               obscureText: true,
//               decoration: const InputDecoration(
//                 label: Text("Senha"),
//                 // suffixIcon: IconButton(
//                 //   onPressed: () => setState(() => obscure = !obscure),
//                 //   icon: Icon(
//                 //     obscure ? Icons.visibility : Icons.visibility_off,
//                 //     color: AppColors.colorGreen,
//                 //   )
//                 // ),
//               ),
//             )
//           ],
//         ),
//       ),
//       actions: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             // OutlinedButton(
//             //   style: ElevatedButton.styleFrom(
//             //     padding: const EdgeInsets.symmetric(horizontal: 20)
//             //   ),
//             //   onPressed: () {
//             //       Navigator.pop(context, false);
//             //   },
//             //   child: const Text('CENCELAR'),
//             // ),
//             // TextButton(
//             //   onPressed: () {
//             //     Navigator.of(context).pop();
            
                
//             //   },
//             //   child: const Text("Cancelar", style: TextStyle(fontSize: 18, color: AppColors.colorGreen),),
//             // ),

//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 backgroundColor: AppColors.colorRed,
//               ),
//               onPressed: () {

//                 AuthRepositoryImpl()
//                   .removerConta(senha: senhaConfirmacaoController.text)
//                   .then((String? erro) {
//                   if (erro == null) {
                              
//                     ref.read(homeAdmVmProvider.notifier).deleteUserVm(widget.idUserSelected);

//                     //employeeSchedule.deleteScheduleVm(idScheduleSelected);
//                     print('Deletou o usuario de id ${widget.idUserSelected}');
//                   // ref.invalidate(getMeProvider);  
//                     ref.invalidate(homeAdmVmProvider);
//                     Navigator.of(context).pushNamedAndRemoveUntil('/auth/login', (route) => false);
//                     //Navigator.pop(context);
//                   }
//                 });
//               },
//               child: const Text("EXCLUIR CONTA"),
//             ),


//             // TextButton(
//             //   onPressed: () {

//             //     AuthRepositoryImpl()
//             //       .removerConta(senha: senhaConfirmacaoController.text)
//             //       .then((String? erro) {
//             //       if (erro == null) {
                              
//             //         ref.read(homeAdmVmProvider.notifier).deleteUserVm(idUserSelected);

//             //         //employeeSchedule.deleteScheduleVm(idScheduleSelected);
//             //         print('Deletou o usuario de id ${idUserSelected}');
//             //       // ref.invalidate(getMeProvider);  
//             //         ref.invalidate(homeAdmVmProvider);
//             //         Navigator.pop(context);
//             //       }
//             //     });
                
//             //   },
//             //   child: const Text("EXCLUIR CONTA"),
//             // ),
//           ],
//         )
//       ],
//     );
//   }
// }
