import 'package:booky/controller/Auth/cubit/auth_c_ubit_cubit.dart';
import 'package:booky/controller/controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../widget/textform.dart';

class Logins extends StatefulWidget {
  const Logins({super.key});

  @override
  State<Logins> createState() => _LoginsState();
}

class _LoginsState extends State<Logins> {


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
                    .login(name.text, password.text);
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


