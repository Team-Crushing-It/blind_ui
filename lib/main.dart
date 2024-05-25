import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:blind_ui/widgets/widgets.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  // a list with calculator components
  List<Widget> widgetsList = [];

  // it reads json and add widgets accordingly,
  // name must be changed
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/instructions/main.json');
    final data = await json.decode(response);
    print(data["structure"][0]);
    for (var element in data["structure"]) {
      widgetsList.add(analyseJson(element));
      widgetsList.add(SizedBox(
        height: 5,
      ));
    }
  }

  /* a very stupidly simplified version for matching components and adding them
  to the list
  I'm sure there is a way better way to do this
  like a static reference that can be in json file itself */
  Widget analyseJson(Map<String, dynamic> element) {
    if (element["componentName"] == "selectionElements") {
      return SelectionElements(
          title: element["title"], elements: element["pictures"]);
    } else if (element["componentName"] == "dimensionsElements") {
      return DimensionsWidget(title: element["title"]);
    } else if (element["componentName"] == "formWidget") {
      return FormWidget(title: element["title"]);
    } else {
      return SizedBox();
    }
  }

  @override
  void initState() {
    super.initState();
    // add all widgets to the widget tree
    // aka initialize and then build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      readJson();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(3),
          // I know it looks ugly but ... ugliness vibes are cool
          color: Colors.amber,
          width: 300,
          height: 500,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetsList,
            ),
          ),
        ),
      ),
    );
  }
}








// ! just keeping content
//! also increasing the codebase size to feel like an expert
// SelectionElements(
//                   elements: ImageConstants.rooms,
//                   title: "Choose Your Room*",
//                 ),
//                 SelectionElements(
//                   elements: ImageConstants.mountType,
//                   title: "Mount Type*",
//                 ),
//                 Text(
//                   "Dimensions *",
//                   style: const TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//                 DimensionsWidget(
//                   title: "width",
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 DimensionsWidget(
//                   title: "height",
//                 ),
//                 SelectionElements(
//                   elements: ImageConstants.covers,
//                   title: "Choose Your Cover*",
//                 ),
//                 SelectionElements(
//                   elements: ImageConstants.rollDirection,
//                   title: "Chose Fabric Roll Direction",
//                 ),
//                 SelectionElements(
//                   elements: ImageConstants.liftMethod,
//                   title: "Choose a Lift Method",
//                 ),
//                 SelectionElements(
//                   elements: ImageConstants.transparentStyle,
//                   title: "Choose a Transparent Style *",
//                 ),
//                 SelectionElements(
//                   elements: ImageConstants.blackoutStyle,
//                   title: "Choose a Blackout Style *",
//                 ),
//                 Text(
//                   "90\$/smthn",
//                   style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.red),
//                 ),