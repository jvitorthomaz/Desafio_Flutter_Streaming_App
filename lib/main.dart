import 'package:desafio_flutter_streaming_app/firebase_options.dart';
import 'package:desafio_flutter_streaming_app/src/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //name: 'my-clinic-app',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: AppWidget()
    )
  );
  
}
