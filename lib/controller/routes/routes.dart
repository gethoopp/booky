import 'package:booky/LoginScreen/login.dart';
import 'package:get/get.dart';

appRoute() => [
   
    GetPage(name: "/Login", page: () => const Login(),transition: Transition.leftToRight)
  
];