import 'package:booky/bloc/data_bloc_bloc.dart';
import 'package:booky/view/content/erorpage.dart';
import 'package:booky/widget/clip.dart';
import 'package:booky/widget/datamethod.dart';
import 'package:booky/widget/loadmethod.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

class ApppBar extends StatelessWidget {
  const ApppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.001,
        ),
        child: ClipPath(
            clipper: SmallCLip(),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 400,
                child: Container(
                  color: Colors.green,
                ),
              ),
            )),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          Text(
            'Booky',
            style: GoogleFonts.roboto(
                fontStyle: FontStyle.italic, color: Colors.white, fontSize: 20),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(top: size.height * 0.09, left: 20),
        child: Text(
          'Recently Add',
          style: GoogleFonts.roboto(
              fontStyle: FontStyle.normal, color: Colors.white, fontSize: 20),
        ),
      ),
      BlocBuilder<DataBlocBloc, DataBlocState>(
        builder: (context, state) {
          if (state is DataBlocInitial) {
            return loadMethod(context);
          } else if (state is DataSucces) {
            final data = state.details;

            return dataMethod(data, context);
          } else  {
             return loadMethod(context);
          }

          
        },
      )
    ]);
  }
}
