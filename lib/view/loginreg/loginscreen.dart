
import 'package:booky/api/Auth/cubit/auth_c_ubit_cubit.dart';
import 'package:booky/controller/controller.dart';
import 'package:booky/widget/qappbar.dart';

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
      appBar: Qappbar(text: 'Booky',func: () => Get.offAllNamed('/Login'),),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.2),
          child: Center(child: formfield('Email', name,false,const Key('email'))),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: Center(child: formfield('Password', password,true,const Key('password'))),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text('Forgot Password?'),
        ),
        SizedBox(
          width: 200,
          child: TextButton(
              key: const Key('add'),
              onPressed: () {
                BlocProvider.of<AuthCubit>(context)
                    .signIn(name.text, password.text)
                    ;
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


