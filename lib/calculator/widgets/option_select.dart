import 'package:blind_ui/calculator/calculator.dart';
import 'package:flutter/material.dart';

class OptionSelect extends StatelessWidget {
  const OptionSelect(
      {super.key,
      required this.index,
      required this.options,
      required this.current, required this.type});

  final int index;
  final List<Option> options;
  final CalculatorState current;
  final String type;


  @override
  Widget build(BuildContext context) {

    final selected = current.

    return ListView.builder(
      itemCount: options.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              border: Border.all(
                  width: 2,
                  color: selected[i] ? Colors.black : Colors.transparent)),
          child: GestureDetector(
            onTap: () {
             
            },
            child: Image.asset(
              "assets/${e.imagepth}",
              height: 120,
              width: 120,
            ),
          ),
        );
      },
    );
  }
}
