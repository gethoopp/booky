import 'package:booky/api/dio/dio.dart';

import 'package:booky/api/model/data.dart';
import 'package:booky/bloc/data_bloc_bloc.dart';
import 'package:booky/controller/controller.dart';
import 'package:booky/widget/author_takeit.dart';
import 'package:booky/widget/genre_takeit.dart';
import 'package:booky/widget/image_takeit.dart';

import 'package:booky/widget/qappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class FictionTakeIt3 extends StatefulWidget {
  const FictionTakeIt3({super.key});

  @override
  State<FictionTakeIt3> createState() => _FictionTakeItState();
}

class _FictionTakeItState extends State<FictionTakeIt3> {
  List<bool> starPressedList = [false, false, false, false, false];
  bool curentVal = true;

  @override
  Widget build(BuildContext context) {
    List<GestureDetector> icons = List.generate(
        5,
        (index) => GestureDetector(
              onTap: () {
                setState(() {
                  starPressedList[index] = !starPressedList[index];
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.star,
                  color: starPressedList[index] ? Colors.amber : Colors.black,
                ),
              ),
            ));

    final size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const Drawer(),
        appBar:
            Qappbar(text: 'Booky', func: () => Get.back(), icons: Icons.menu),
        body: BlocBuilder<DataBlocBloc, DataBlocState>(
          builder: (context, state) {
            if (state is DataBlocInitial) {
              return Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(size.height * 0.15),
                      child: Card(
                        elevation: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 0),
                          width: 143,
                          height: 198,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      heightFactor: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                                text: '',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: '\n',
                                      style: GoogleFonts.roboto(fontSize: 14))
                                ]),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Rating :'),
                        Row(
                          children: icons,
                        )
                      ],
                    ),
                  ],
                ),
              );
            } else if (state is DataSucces) {
              final data = state.details;
              return Column(
                children: [
                  image_take_it(size, data, id: 0),
                  author_takeit(data,id: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Rating :'),
                      Row(
                        children: icons,
                      )
                    ],
                  ),
                  genre_takeit(size),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data[0]!.details.status?.toString() == "true"
                              ? 'Availability'
                              : "Taken Until ${data[0]!.date}",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color:
                                  data[0]!.details.status?.toString() == "true"
                                      ? Colors.green
                                      : Colors.red),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(data[0]!.details.status.toString() == "true" ? Colors.green : Colors.transparent),
                                  backgroundColor:
                                      MaterialStateProperty.all(data[0]!.details.status.toString() == "true" ? Colors.green : Colors.grey),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                              onPressed: () {
                                setState(() {
                                  if (data[0]!.details.status.toString() ==
                                      "true") {
                                    Get.dialog(dialog(data));
                                  } else {
                                    return;
                                  }
                                });
                              },
                              child: Text(
                                data[0]!.details.status?.toString() == "true"
                                    ? "Take it"
                                    : "Give Back",
                                style: const TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              );
            } else {
              return const Center(
                child: Text('Silahkan Coba Lagi'),
              );
            }
          },
        ));
  }

  Dialog dialog(List<Books?> data) {
    return Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        width: 320,
        height: 191,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [Text('Take "${data[0]!.details.nama}" Untill')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: 235,
                height: 45,
                child: TextFormField(
                  controller: datetime3,
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                      hintText: 'yyyy-mm-dd',
                      fillColor: Colors.green,
                      focusColor: Colors.green,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: 120,
                      height: 49,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green)),
                          onPressed: () {
                            setState(() {
                           // ignore: unrelated_type_equality_checks
                           if (data[0]!.date !=
                                  DateTime.parse(datetime3.text)) {
                                data[0]!.date =
                                    DateTime.parse(datetime3.text).toString();
                              }
                            
                              data[0]!.details.status =
                                  !data[0]!.details.status!;
                              curentVal = !curentVal;
                              Services().updatedata(
                                  0,
                                  "Somethings Take Me",
                                  "https://i.ibb.co/ZWDd8ZK/White-and-Brown-Simple-Book-Cover-A4-Document.png",
                                  "Itsuki Takahashi",
                                  curentVal);

                                   Services().updateDate(0, datetime3.text);

                              Get.back();
                            });
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                      width: 120,
                      height: 49,
                      child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      side: BorderSide(color: Colors.green)))),
                          onPressed: () {},
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.green),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
