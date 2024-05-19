// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_cubit_cubit.dart';

class CalculatorCubitInitial {
  final String room;
  final String mountType;
  final double height;
  final double width;
  final String cover;
  final String rollDirection;
  final String liftMethod;
  final String transparentStyle;
  final String blackoutStyle;
  CalculatorCubitInitial({
    required this.room,
    required this.mountType,
    required this.height,
    required this.width,
    required this.cover,
    required this.rollDirection,
    required this.liftMethod,
    required this.transparentStyle,
    required this.blackoutStyle,
  });

  CalculatorCubitInitial copyWith({
    String? room,
    String? mountType,
    double? height,
    double? width,
    String? cover,
    String? rollDirection,
    String? liftMethod,
    String? transparentStyle,
    String? blackoutStyle,
  }) {
    return CalculatorCubitInitial(
      room: room ?? this.room,
      mountType: mountType ?? this.mountType,
      height: height ?? this.height,
      width: width ?? this.width,
      cover: cover ?? this.cover,
      rollDirection: rollDirection ?? this.rollDirection,
      liftMethod: liftMethod ?? this.liftMethod,
      transparentStyle: transparentStyle ?? this.transparentStyle,
      blackoutStyle: blackoutStyle ?? this.blackoutStyle,
    );
  }
}
