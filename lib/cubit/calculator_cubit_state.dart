// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_cubit_cubit.dart';

enum Etype { pool, patio_insulated, patio_screened, carport, gazebo, balcony }

enum Ftype { pavers, slab }

enum Stype { deff, nosee, tuff, glas, animal }

class CalculatorCubitState {
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

  CalculatorCubitState({
    required this.etype,
    required this.fneed,
    required this.ftype,
    required this.height,
    required this.width,
    required this.color,
    required this.screentype,
    required this.dnum,
    required this.doggiedoor,
    required this.price,
  });

  CalculatorCubitState copyWith({
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
  }) {
    return CalculatorCubitState(
      etype: etype ?? this.etype,
      fneed: fneed ?? this.fneed,
      ftype: ftype ?? this.ftype,
      height: height ?? this.height,
      width: width ?? this.width,
      color: color ?? this.color,
      screentype: screentype ?? this.screentype,
      dnum: dnum ?? this.dnum,
      doggiedoor: doggiedoor ?? this.doggiedoor,
      price: price ?? this.price,
    );
  }
}
