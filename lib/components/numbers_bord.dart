import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/number/cubit/number_cubit.dart';
import '../model/number_sp.dart';

class NumbersBord extends StatelessWidget {
  var numberCubit;
  NumbersBord(this.numberCubit);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NumberCubit, NumberState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                numberCubit.number != ""
                    ? (Row(children: [
                        Expanded(
                            child: Center(child: Text(numberCubit.number))),
                        IconButton(
                            onPressed: () {
                              numberCubit.deleteNumber();
                            },
                            icon: Icon(
                              Icons.backspace_outlined,
                              color: Color.fromARGB(255, 253, 169, 117),
                            ))
                      ]))
                    : Container(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      buildBordRow("1", "~", "2", "ABC", "3", "DEF"),
                      buildBordRow("4", "GHI", "5", "JKL", "6", "MNO"),
                      buildBordRow("7", "PQRS", "8", "TUV", "9", "WXYZ"),
                      buildBordRow("*", ",", "0", "+", "#", ";"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_circle_down_rounded,
                          size: 37,
                          color: Color.fromARGB(255, 253, 169, 117),
                        )),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Call",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(238, 239, 131, 63)),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(156, 255, 255, 255),
                          fixedSize: const Size(200, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    IconButton(
                        onPressed: () async {
                          if (numberCubit.number != "") {
                            await NumberSP.setNumber(numberCubit.number);
                          }
                        },
                        icon: Icon(
                          Icons.perm_identity_outlined,
                          size: 35,
                          color: Color.fromARGB(255, 253, 169, 117),
                        )),
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget buildNumberButton(String main, String sub) {
    return GestureDetector(
      onTap: () {
        numberCubit.addNumber(main);
      },
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(133, 238, 63, 32),
        radius: 32,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              Text(
                main,
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
              Text(
                sub,
                style: TextStyle(
                    fontSize: 13, color: Color.fromARGB(195, 255, 255, 255)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBordRow(String main1, String sub1, String main2, String sub2,
      String main3, String sub3) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildNumberButton(main1, sub1),
          buildNumberButton(main2, sub2),
          buildNumberButton(main3, sub3),
        ],
      ),
    );
  }
}
