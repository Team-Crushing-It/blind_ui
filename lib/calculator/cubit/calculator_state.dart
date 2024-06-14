// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_cubit.dart';

enum Etype {
  pool,
  patio_insulated,
  patio_screened,
  carport,
  gazebo,
  balcony,
  front
}

enum Ftype { pavers, slab }

enum Stype { deff, nosee, tuff, glas, animal }

class CalculatorState extends Equatable {
  final Etype etype;
  final bool fneed;
  final Ftype ftype;
  final double height;
  final double width;
  final String color;
  final Stype screentype;
  final double dnum;
  final bool doggiedoor;
  final double price;
  final double eunit;
  final double funit;
  final double sunit;

  const CalculatorState({
    required this.etype,
    required this.fneed,
    required this.ftype,
    required this.height,
    required this.width,
    required this.color,
    required this.screentype,
    required this.dnum,
    required this.doggiedoor,
    // required this.price,
    required this.eunit,
    required this.funit,
    required this.sunit,
//how much per door?
  }) : price = ((height * eunit) +
            (height * funit) +
            (height * sunit) +
            (dnum * 50));

  CalculatorState copyWith({
    Etype? etype,
    bool? fneed,
    Ftype? ftype,
    double? height,
    double? width,
    String? color,
    Stype? screentype,
    double? dnum,
    bool? doggiedoor,
    double? price,
    double? eunit,
    double? funit,
    double? sunit,
  }) {
    return CalculatorState(
      etype: etype ?? this.etype,
      fneed: fneed ?? this.fneed,
      ftype: ftype ?? this.ftype,
      height: height ?? this.height,
      width: width ?? this.width,
      color: color ?? this.color,
      screentype: screentype ?? this.screentype,
      dnum: dnum ?? this.dnum,
      doggiedoor: doggiedoor ?? this.doggiedoor,
      eunit: eunit ?? this.eunit,
      funit: funit ?? this.funit,
      sunit: sunit ?? this.sunit,
    );
  }

  @override
  String toString() {
    return '$etype';
  }

  @override
  List<Object?> get props => [
        etype,
        fneed,
        ftype,
        width,
        height,
        color,
        screentype,
        dnum,
        doggiedoor,
        price,
        eunit,
        funit,
        sunit,
      ];
}
