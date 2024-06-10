// ignore_for_file: sized_box_for_whitespace

import 'package:blind_ui/app_bloc_observer.dart';
import 'package:blind_ui/cubit/calculator_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:blind_ui/widgets/widgets.dart';
import 'constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(() {
    runApp(const MyApp());
  }, blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => CalculatorCubitCubit(),
        child: const MyHomePage(title: 'Estimator'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectionElements(
                elements: ImageConstants.enclosureType,
                title: "Choose Screen Enclosure Type*",
              ),
              SelectionElements(
                elements: ImageConstants.footerType,
                title: "Choose Footer Type*",
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Dimensions of footer:",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 8.0),
                child: DimensionsWidget(
                  title: "Length (in)",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: 8.0, left: 8.0, right: 8.0, bottom: 24),
                child: DimensionsWidget(
                  title: "Width (in))",
                ),
              ),
              //or square footage

              SelectionElements(
                elements: ImageConstants.colorType,
                title: "Choose Color*",
              ),
              SelectionElements(
                elements: ImageConstants.screenType,
                title: "Choose Screen Type*",
              ),
              SelectionElements(
                elements: ImageConstants.doorNumType,
                title: "Choose Number of Doors*",
              ),
              SelectionElements(
                elements: ImageConstants.doggieType,
                title: "Choose Doggie Doors",
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Instant Quote Price:",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),

              // Column(
              //   children: [
              //     const Row(
              //       children: [
              //         CheckboxExample(),
              //         TextField(
              //           decoration: InputDecoration(
              //             border: OutlineInputBorder(),
              //             hintText: 'Enter Email',
              //           ),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         CheckboxExample(),
              //         TextField(
              //           decoration: InputDecoration(
              //             border: OutlineInputBorder(),
              //             hintText: 'Enter Number',
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),

              // Text(
              //   "Options + Inputs",
              //   style: const TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.red),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.grey;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

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
            const SizedBox(
              width: 10,
            ),
            Center(
              child: Tooltip(
                message: 'Measure from top left corner to bottom left corner.',
                textStyle: const TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                waitDuration: const Duration(milliseconds: 500),
                showDuration: const Duration(seconds: 2),
                child: const Icon(Icons.help_outline,
                    size: 15, color: Colors.black),
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
            const SizedBox(
              width: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<String>(
                iconEnabledColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                underline: const SizedBox(),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                dropdownColor: Colors.white,
                isDense: true,
                value: '0/8',
                items: <String>[
                  '0/8',
                  '1/8',
                  '1/4',
                  '3/8',
                  '1/2',
                  '5/8',
                  '3/4',
                  '7/8'
                ].map((String value) {
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
