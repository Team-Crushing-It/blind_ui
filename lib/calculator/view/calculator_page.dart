import 'package:blind_ui/calculator/widgets/widgets.dart';
import 'package:equatable/equatable.dart';
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

    return Scaffold(
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 91, 110, 179),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          width: double.maxFinite,
          height: 100,
          child: SnackbarPrice(
            current: current,
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OptionSelect(
                title: 'Enclosure Type',
                type: 'etype',
                options: enclosureType,
                current: current.etype,
              ),
              OptionSelect(
                title: 'Need a footer?',
                type: 'fneed',
                options: fNeed,
                current: current.fneed,
              ),
              if (current.fneed)
                OptionSelect(
                  title: 'Footer Type',
                  type: 'ftype',
                  options: footerType,
                  current: current.ftype,
                ),
              const AreaInput(),
              OptionSelect(
                title: 'Color',
                type: 'color',
                options: colorType,
                current: current.color,
              ),
              OptionSelect(
                title: 'Screen Type',
                type: 'stype',
                options: screenType,
                current: current.screentype,
              ),
              OptionSelect(
                title: 'Door Count',
                type: 'dnum',
                options: doorNumType,
                current: current.dnum,
              ),
              OptionSelect(
                title: 'Doggie Doors',
                type: 'doggietype',
                options: doggieType,
                current: current.doggiedoor,
              ),
              FinalPrice(current: current),
            ],
          ),
        ),
      ),
    );
  }
}

class Option extends Equatable {
  final String imagepth;
  final Object type;
  final bool isSelected;

  const Option({
    required this.imagepth,
    required this.type,
    this.isSelected = false,
  });

  @override
  String toString() {
    return '$type';
  }

  @override
  List<Object?> get props => [imagepth, type, isSelected];
}

class AreaInput extends StatelessWidget {
  const AreaInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Square Feet',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                width: 70,
                child: TextField(
                  onChanged: (value) {
                    context
                        .read<CalculatorCubit>()
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
