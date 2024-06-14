import 'package:blind_ui/calculator/widgets/option_select.dart';
import 'package:blind_ui/calculator/widgets/option_selector.dart';
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

  static List<Option> area = [];

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

  static List<List<Option>> optionList = [
    enclosureType,
    fNeed,
    footerType,
    area,
    colorType,
    screenType,
    doorNumType,
    doggieType
  ];

  @override
  Widget build(BuildContext context) {
    final current = context.watch<CalculatorCubit>().state;
    final fprice = current.price;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: optionList.length,
                itemBuilder: (BuildContext context, int index) {
                  return OptionSelect(
                    type: '',
                    index: index,
                    options: optionList[index],
                    current: current,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Option extends Equatable {
  final String imagepth;
  final Object type;
  final bool isSelected;

  Option({
    required this.imagepth,
    required this.type,
    this.isSelected = false,
  });

  @override
  String toString() {
    return 'selection option type: $type';
  }

  @override
  List<Object?> get props => [imagepth, type, isSelected];
}
