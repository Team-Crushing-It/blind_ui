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
  final bool fneed = false;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final current = context.watch<CalculatorCubitCubit>().state;
    final fprice = current.price;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              SelectionElements(
                elements: ImageConstants.enclosureType,
                title: "Choose Screen Enclosure Type",
                toUpdate: 'etype',
              ),
              SelectionElements(
                elements: ImageConstants.fNeed,
                title: "Need a Footer?",
                toUpdate: 'fneed',
              ),

              if (current.fneed)
                SelectionElements(
                  elements: ImageConstants.footerType,
                  title: "Choose Footer Type",
                  toUpdate: 'ftype',
                ),

              const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 8.0),
                child: Text(
                  "Area of Enclosure",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Square Feet',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          child: TextField(
                            onChanged: (value) {
                              context
                                  .read<CalculatorCubitCubit>()
                                  .updateState('height', double.parse(value));
                            },
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            cursorWidth: 1,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              fillColor: Colors.white,
                              filled: true,
                              hoverColor: Colors.transparent,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                              labelText: null,
                              isDense: true, // Added this
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SelectionElements(
                elements: ImageConstants.colorType,
                title: "Choose Color",
                toUpdate: 'color',
              ),
              SelectionElements(
                elements: ImageConstants.screenType,
                title: "Choose Screen Type",
                toUpdate: 'stype',
              ),
              SelectionElements(
                elements: ImageConstants.doorNumType,
                title: "Choose Number of Doors",
                toUpdate: 'dnum',
              ),
              SelectionElements(
                elements: ImageConstants.doggieType,
                title: "Doggie Doors",
                toUpdate: 'doggietype',
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Instant Quote Price",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              if (current.etype == Etype.balcony ||
                  current.etype == Etype.front ||
                  current.etype == Etype.gazebo) ...[
                const Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Call us for the best price',
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ] else
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    fprice.toString(),
                    style: const TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
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
            ],
          ),
        ],
      ),
    );
  }
}
