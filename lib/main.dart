import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:todo_web/common/common.dart';

import 'common/global_bloc/global_bloc.dart';
import 'entities/entities.dart';
import 'features/splash/presentation/page/splash_page.dart';
import 'services/auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: null,
    options: const FirebaseOptions(
        apiKey: "AIzaSyAg6y1YMlPmDyZG2JpWICI8tQ3EpI1NuyQ",
        authDomain: "todo-web-db077.firebaseapp.com",
        projectId: "todo-web-db077",
        storageBucket: "todo-web-db077.appspot.com",
        messagingSenderId: "751612133611",
        appId: "1:751612133611:web:85b3f70a917fe623b1beae",
        measurementId: "G-HK94577BHS"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: BlocProvider(
          create: (context) => AppNetworkBloc(),
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Todo Web',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const SplashPage(),
              navigatorKey: AppNavigator.getKey(const NavigationType.root()),
              builder: (context, child) {
                return BlocBuilder<AppNetworkBloc, AppNetworkState>(
                    builder: (context, state) {
                  return ScrollConfiguration(
                    behavior: AppScrollBehavior(),
                    child: child ?? Container(),
                  );
                });
              }),
        ));
  }
}
