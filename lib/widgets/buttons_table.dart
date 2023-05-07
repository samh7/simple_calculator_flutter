import 'package:flutter/material.dart';
import 'button.dart';

class ButtonsTable extends StatelessWidget {
  const ButtonsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0,20),
          width: MediaQuery.of(context).size.width * 0.75,
          child: Table(
            children: const [
              TableRow(children: [
                Button(text: "C", color: Colors.red, height: 1),
                Button(text: 'X', color: Colors.red, height: 1),
                Button(text: '%', color: Colors.red, height: 1),
              ]),
              TableRow(children: [
                Button(text: '7', color: Colors.black, height: 1),
                Button(text: '8', color: Colors.black, height: 1),
                Button(text: '9', color: Colors.black, height: 1),
              ]),
              TableRow(children: [
                Button(text: '4', color: Colors.black, height: 1),
                Button(text: '5', color: Colors.black, height: 1),
                Button(text: '6', color: Colors.black, height: 1),
              ]),
              TableRow(children: [
                Button(text: '1', color: Colors.black, height: 1),
                Button(text: '2', color: Colors.black, height: 1),
                Button(text: '3', color: Colors.black, height: 1),
              ]),
              TableRow(children: [
                Button(text: '.', color: Colors.black, height: 1),
                Button(text: '0', color: Colors.black, height: 1),
                SizedBox(),
              ]),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: Table(
            children: const [
              TableRow(children: [
                Button(text: '/', color: Colors.red, height: 1),
              ]),
              TableRow(children: [
                Button(text: '*', color: Colors.red, height: 1),
              ]),
              TableRow(children: [
                Button(text: '-', color: Colors.red, height: 1),
              ]),
              TableRow(children: [
                Button(text: '+', color: Colors.red, height: 1),
              ]),
              TableRow(children: [
                Button(text: '=', color: Colors.red, height: 1),
              ]),
            ],
          ),
        )
      ],
    );
  }
}
