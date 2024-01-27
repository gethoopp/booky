import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

TextEditingController name = TextEditingController();
 TextEditingController password = TextEditingController();
 TextEditingController datetime = TextEditingController();
 TextEditingController datetime1 = TextEditingController();
 TextEditingController datetime2 = TextEditingController();
 TextEditingController datetime3 = TextEditingController();

 final GlobalKey<FormState> formKey = GlobalKey<FormState>();
 final auth = FirebaseAuth.instance;

 
