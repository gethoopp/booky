import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox menuColumn({
    String? image,
    
   required String text,
  }) {
    return SizedBox(
      width: 90,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerRight,
              image: AssetImage(image!),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Center(
            child: Text(text, style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }

