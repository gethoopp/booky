import 'package:booky/view/home.dart';
import 'package:booky/view/loginreg/loginscreen.dart';
import 'package:booky/view/loginreg/regis.dart';
import 'package:get/get.dart';

appRoute() => [
   
    GetPage(name: "/Login", page: () => const Login(),transition: Transition.leftToRight),
    GetPage(name: "/Logins", page: () => const Logins(),transition: Transition.leftToRight),
    GetPage(name: "/Regis", page: () => const Regis(), transition: Transition.leftToRight)
  
];