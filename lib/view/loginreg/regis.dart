import 'dart:ffi';

import 'package:booky/controller/Auth/cubit/auth_c_ubit_cubit.dart';
import 'package:booky/controller/controller.dart';
import 'package:booky/widget/textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Regis extends StatefulWidget {
  const Regis({super.key});

  @override
  State<Regis> createState() => _RegisState();
}

class _RegisState extends State<Regis> with SingleTickerProviderStateMixin {
 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Booky',
          style: TextStyle(color: Colors.white),
        )),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Get.toNamed('/Login');
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                )),
          ],
        ),
        backgroundColor: Colors.green[600],
        toolbarHeight: 50,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.2),
          child: Center(child: formfield('Email', name,false)),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: Center(child: formfield('Password', password,true)),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text('Forgot Password?'),
        ),
        SizedBox(
          width: 200,
          child: TextButton(
              onPressed: () {
                BlocProvider.of<AuthCUbitCubit>(context)
                    .signIn(name.text, password.text);
              },
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.green),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              )),
        )
      ]),
    );
  }
}
