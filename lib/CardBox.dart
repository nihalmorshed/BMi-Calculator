import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final Color clr;
  final Widget? CardBoxchild;
  final Function()? change;
  CardBox({required this.clr, this.CardBoxchild, this.change});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        change!();
      },
      child: Container(
        child: CardBoxchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
