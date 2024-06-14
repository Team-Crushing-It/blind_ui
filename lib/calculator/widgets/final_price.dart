import 'package:blind_ui/calculator/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';

class FinalPrice extends StatelessWidget {
  const FinalPrice({
    super.key,
    required this.current,
  });

  final CalculatorState current;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Instant Quote Price",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
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
              current.price.toString(),
              style: const TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
      ],
    );
  }
}
