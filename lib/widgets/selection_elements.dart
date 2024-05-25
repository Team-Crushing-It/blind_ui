import 'package:flutter/material.dart';

class SelectionElements extends StatefulWidget {
  final String title;
  final List<dynamic> elements;
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
                    message: toTitleCase(
                        e.replaceAll('_', " ").replaceAll(".jpeg", "")),
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
                            reset();
                            selected[i] = true;
                          });
                        },
                        child: Image.asset(
                          "assets/$e",
                          height: 70,
                          width: 70,
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

//! add later to utils class
String toCapitalized(String str) {
  return str.length > 0
      ? '${str[0].toUpperCase()}${str.substring(1).toLowerCase()}'
      : '';
}

String toTitleCase(String str) {
  return str
      .replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => toCapitalized(str))
      .join(' ');
}
