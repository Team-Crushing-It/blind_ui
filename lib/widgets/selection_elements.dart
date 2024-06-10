import 'package:blind_ui/constants.dart';
import 'package:blind_ui/cubit/calculator_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectionElements extends StatefulWidget {
  final String title;
  final List<SelectOption> elements;

  SelectionElements({required this.title, super.key, required this.elements}) {}

  @override
  State<SelectionElements> createState() => _SelectionElementsState();
}

class _SelectionElementsState extends State<SelectionElements> {
  List<bool> selected = [];
  @override
  void initState() {
    super.initState();
    reset();
  }

  void reset() {
    selected = List.generate(widget.elements.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 5,
          children: widget.elements
              .asMap()
              .map((i, e) => MapEntry(
                  i,
                  Tooltip(
                    message: e.imagepth
                        .replaceAll('_', " ")
                        .replaceAll(".jpeg", "")
                        .toTitleCase(),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          border: Border.all(
                              width: 2,
                              color: selected[i]
                                  ? Colors.black
                                  : Colors.transparent)),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            print(widget.elements[i]);
                            reset();
                            selected[i] = true;

                            context
                                .read<CalculatorCubitCubit>()
                                .updateState(widget.elements[i].type);
                          });
                        },
                        child: Image.asset(
                          "assets/${e.imagepth}",
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                  )))
              .values
              .toList(),
        )
      ],
    );
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
