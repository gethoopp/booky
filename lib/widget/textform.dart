 import 'package:flutter/material.dart';


SizedBox formfield(String text, TextEditingController controller, bool obsec, Key unique ) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        key: unique ,
        controller: controller,
        obscureText: obsec,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: text,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }