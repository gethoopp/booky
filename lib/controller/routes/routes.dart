import 'package:booky/view/content/erorpage.dart';
import 'package:booky/view/content/firstpage.dart';
import 'package:booky/view/detailContent/fictionpage.dart';
import 'package:booky/view/detailContent/horropage.dart';
import 'package:booky/view/home.dart';
import 'package:booky/view/loginreg/loginscreen.dart';
import 'package:booky/view/loginreg/regis.dart';
import 'package:booky/view/take_it_book/fiction_take_it_1.dart';
import 'package:booky/view/take_it_book/fiction_takeit_2.dart';
import 'package:booky/view/take_it_book/fiction_takeit_3.dart';
import 'package:get/get.dart';

appRoute() => [
      GetPage(
          name: "/Login",
          page: () => const Login(),
          transition: Transition.leftToRight),
      GetPage(
          name: "/Logins",
          page: () => const Logins(),
          transition: Transition.leftToRight),
      GetPage(
          name: "/Regis",
          page: () => const Regis(),
          transition: Transition.leftToRight),
      GetPage(
          name: "/Fiction",
          page: () => const FictionPage(),
          transition: Transition.fadeIn),
      GetPage(
          name: "/Horor",
          page: () => const Horror(),
          transition: Transition.fadeIn),
      GetPage(
          name: "/error",
          page: () => const Err(),
          transition: Transition.rightToLeft),
      GetPage(
          name: "/MainMenu",
          page: () => const First(),
          transition: Transition.leftToRight),
      GetPage(
          name: "/FictionTakeIt",
          page: () => const FictionTakeIt(),
          transition: Transition.fadeIn),
      GetPage(
          name: "/FictionTakeIt2",
          page: () => const FictionTakeIt2(),
          transition: Transition.fadeIn),
      GetPage(
          name: "/FictionTakeIt3",
          page: () => const FictionTakeIt3(),
          transition: Transition.fadeIn),
    ];
