import 'package:flutter/material.dart';

class ButtonLabelItem extends StatelessWidget {
  Icon? bicon;
  String? label;
  double size = 12;
  Color color = Colors.white;
  ButtonLabelItem(this.bicon, this.label, double size, color) {
    this.color = color;
    this.size = size;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(30),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: IconButton(
              onPressed: () {},
              icon: bicon!,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            label!,
            style: TextStyle(
                color: color, fontWeight: FontWeight.w300, fontSize: size),
          )
        ],
      ),
    );
  }
}
