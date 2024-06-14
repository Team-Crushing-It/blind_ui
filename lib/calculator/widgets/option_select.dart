import 'package:blind_ui/calculator/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OptionSelect extends StatelessWidget {
  const OptionSelect({
    super.key,
    required this.title,
    required this.type,
    required this.options,
    required this.current,
  });

  final String title;
  final String type;
  final List<Option> options;
  final Object current;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 4,
            runSpacing: 5,
            children: [
              ...options.map(
                (e) => Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(9)),
                    border: Border.all(
                      width: 2,
                      color:
                          current == e.type ? Colors.black : Colors.transparent,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      context.read<CalculatorCubit>().updateState(type, e.type);
                    },
                    child: Image.asset(
                      "assets/${e.imagepth}",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
