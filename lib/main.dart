import 'package:booky/api/Auth/cubit/auth_c_ubit_cubit.dart';
import 'package:booky/bloc/data_bloc_bloc.dart';
import 'package:booky/controller/routes/routes.dart';
import 'package:booky/firebase_options.dart';
import 'package:booky/splash/splash.dart';
//import 'package:booky/view/content/erorpage.dart';

//import 'package:booky/view/content/firstpage.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';

import 'controller/controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  BuildContext? globalContext;
  
  @override
  void initState() {
   
    super.initState();
  }

  @override
  void dispose() {
    name;
    password;
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    globalContext = context;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => DataBlocBloc()..add(DataNew()))
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        child: GetMaterialApp(
            getPages: appRoute(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
              useMaterial3: true,
            ),
            home:  const SplashScreen()),
      ),
    );
  }
}
