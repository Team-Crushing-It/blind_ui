import 'package:blind_ui/calculator/cubit/calculator_cubit.dart';
import 'package:blind_ui/calculator/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OptionSelector extends StatefulWidget {
  final String title;
  final List<Option> options;
  final String toUpdate;

  const OptionSelector(
      {required this.title,
      super.key,
      required this.options,
      required this.toUpdate});

  @override
  State<OptionSelector> createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  List<bool> selected = [];

  @override
  void initState() {
    super.initState();
    selected = List.generate(widget.options.length, (index) => false);
    selected[0] = true;
  }

  void reset() {
    selected = List.generate(widget.options.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
            children: widget.options
                .asMap()
                .map((i, e) => MapEntry(
                    i,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(9)),
                          border: Border.all(
                              width: 2,
                              color: selected[i]
                                  ? Colors.black
                                  : Colors.transparent)),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            reset();
                            selected[i] = true;

                            context.read<CalculatorCubit>().updateState(
                                widget.toUpdate, widget.options[i].type);
                          });
                        },
                        child: Image.asset(
                          "assets/${e.imagepth}",
                          height: 120,
                          width: 120,
                        ),
                      ),
                    )))
                .values
                .toList(),
          )
        ],
      ),
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
