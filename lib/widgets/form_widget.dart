import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  final String title;
  const FormWidget({
    super.key,
    required this.title,
  });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        formRow(
            formName: "email",
            checkBoxValue: selected,
            onChanged: (_) {
              setState(() {
                selected = !selected;
              });
            }),
        formRow(
            formName: "text",
            checkBoxValue: !selected,
            onChanged: (_) {
              setState(() {
                selected = !selected;
              });
            }),
      ],
    );
  }

  Row formRow(
      {required String formName,
      required bool checkBoxValue,
      required void Function(bool?)? onChanged}) {
    return Row(
      children: [
        Checkbox(
          value: checkBoxValue,
          onChanged: onChanged,
          activeColor: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          formName,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 120,
          child: const TextField(
            keyboardType: TextInputType.number,
            cursorColor: Colors.black,
            cursorWidth: 1,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              fillColor: Colors.white,
              filled: true,
              hoverColor: Colors.transparent,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
              ),
              labelText: null,
              isDense: true, // Added this
            ),
          ),
        ),
      ],
    );
  }
}
