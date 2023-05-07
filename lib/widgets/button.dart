import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../logic/calculator.dart';

class Button extends StatefulWidget {
  const Button(
      {super.key,
      required this.text,
      required this.height,
      required this.color});
  final String text;
  final double height;
  final Color color;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.fromLTRB(0,30,0,10),
      height: MediaQuery.of(context).size.width * 0.1 * widget.height,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ),
        onPressed: () {
          Provider.of<Calculator>(context, listen: false)
              .calculate(widget.text);
        },
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(color: widget.color, fontSize: 25),
          ),
        ),
        // style: MaterialStateProperty<RoundedRectangleBorder>{
        //   RoundedRectangleBorder(side: con)
        // },
      ),
    );
    ;
  }
}
