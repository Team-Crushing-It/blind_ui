import 'package:blind_ui/calculator/widgets/option_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calculator.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorCubit(),
      child: const CalculatorView(),
    );
  }
}

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  static List<Option> enclosureType = [
    Option(imagepth: 'etype_pool.png', type: Etype.pool),
    Option(imagepth: 'etype_patio.png', type: Etype.patio_insulated),
    Option(imagepth: 'etype_porch.png', type: Etype.patio_screened),
    Option(imagepth: 'etype_carport.png', type: Etype.carport),
    Option(imagepth: 'etype_gazebo.png', type: Etype.gazebo),
    Option(imagepth: 'etype_balcony.png', type: Etype.balcony),
    Option(imagepth: 'etype_front.png', type: Etype.front),
  ];

  static List<Option> fNeed = [
    Option(imagepth: 'fneed_no.png', type: false),
    Option(imagepth: 'fneed_yes.png', type: true),
  ];

  static List<Option> footerType = [
    Option(imagepth: 'ftype_pavers.png', type: Ftype.pavers),
    Option(imagepth: 'ftype_slab.png', type: Ftype.slab)
  ];

  static List<Option> colorType = [
    Option(imagepth: 'ctype_white.png', type: 'White'),
    Option(imagepth: 'ctype_darkbrown.png', type: 'Dark Brown')
  ];

  static List<Option> screenType = [
    Option(imagepth: 'stype_default.png', type: Stype.deff),
    Option(imagepth: 'stype_nosee.png', type: Stype.nosee),
    Option(imagepth: 'stype_tuff.png', type: Stype.tuff),
    Option(imagepth: 'stype_glass.png', type: Stype.glas),
    Option(imagepth: 'stype_animal.png', type: Stype.animal),
  ];

  static List<Option> doorNumType = [
    Option(imagepth: 'dtype_1.png', type: 1),
    Option(imagepth: 'dtype_2.png', type: 2),
    Option(imagepth: 'dtype_3.png', type: 3),
  ];

  static List<Option> doggieType = [
    Option(imagepth: 'doggietype_no.png', type: false),
    Option(imagepth: 'doggietype_yes.png', type: true),
  ];
  @override
  Widget build(BuildContext context) {
    final current = context.watch<CalculatorCubit>().state;

    final fprice = current.price;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CalculatorCubit, CalculatorState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OptionSelector(
                    options: enclosureType,
                    title: "Choose Screen Enclosure Type",
                    toUpdate: 'etype',
                  ),
                  OptionSelector(
                    options: fNeed,
                    title: "Need a Footer?",
                    toUpdate: 'fneed',
                  ),
                  if (current.fneed)
                    OptionSelector(
                      options: footerType,
                      title: "Choose Footer Type",
                      toUpdate: 'ftype',
                    ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 8.0),
                    child: Text(
                      "Area of Enclosure",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Square Feet',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 70,
                              child: TextField(
                                onChanged: (value) {
                                  context.read<CalculatorCubit>().updateState(
                                      'height', double.parse(value));
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
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1),
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
                  OptionSelector(
                    options: colorType,
                    title: "Choose Color",
                    toUpdate: 'color',
                  ),
                  OptionSelector(
                    options: screenType,
                    title: "Choose Screen Type",
                    toUpdate: 'stype',
                  ),
                  OptionSelector(
                    options: doorNumType,
                    title: "Choose Number of Doors",
                    toUpdate: 'dnum',
                  ),
                  OptionSelector(
                    options: doggieType,
                    title: "Doggie Doors",
                    toUpdate: 'doggietype',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Instant Quote Price",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                  if (current.etype == Etype.balcony ||
                      current.etype == Etype.front ||
                      current.etype == Etype.gazebo) ...[
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Call us for the best price',
                        style: TextStyle(
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
            );
          },
        ),
      ),
    );
  }
}

class Option {
  final String imagepth;
  final Object type;

  Option({
    required this.imagepth,
    required this.type,
  });

  @override
  String toString() {
    return 'selection option type: $type';
  }
}