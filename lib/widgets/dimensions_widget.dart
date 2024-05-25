import 'package:flutter/material.dart';


class DimensionsWidget extends StatelessWidget {
  final String title;
  const DimensionsWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Tooltip(
                message: 'Measure from top left corner to bottom left corner.',
                textStyle: TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                waitDuration: Duration(milliseconds: 500),
                showDuration: Duration(seconds: 2),
                child: Icon(Icons.help_outline, size: 15, color: Colors.black),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 70,
              child: const TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                cursorWidth: 1,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
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
            SizedBox(
              width: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<String>(
                iconEnabledColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                underline: SizedBox(),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                dropdownColor: Colors.white,
                isDense: true,
                value: "1/4",
                items: <String>['1/8', '1/4', '1/2', '3/4', '7/8']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            )
          ],
        ),
      ],
    );
  }
}
