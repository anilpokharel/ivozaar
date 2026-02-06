import 'package:flutter/material.dart';

class Rounded extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const Rounded({super.key, 
    required this.btnName,
    this.icon,
    this.bgcolor = Colors.blueGrey,
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
        shadowColor: bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
          bottomLeft: Radius.circular(21)
        ))
      ),
      child: Icon!=null ? Row(
        children: [
          icon!,
          Text(btnName, style: textStyle,)
        ],
      ): Text(btnName,
      style: textStyle
      ),
    );
  }
}
