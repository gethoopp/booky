import 'package:booky/api/model/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meta/meta.dart';

Align author_takeit (List<Books?> data, {required int id}) {
    return Align(
                  alignment: Alignment.center,
                  heightFactor: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: data[id]!.details.nama,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            children: [
                              TextSpan(
                                  text: '\n${data[id]!.details.author}',
                                  style: GoogleFonts.roboto(fontSize: 14))
                            ]),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
  }