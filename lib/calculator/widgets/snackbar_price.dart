import 'package:blind_ui/calculator/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//tel:8776947788

class SnackbarPrice extends StatelessWidget {
  const SnackbarPrice({
    super.key,
    required this.current,
  });

  final CalculatorState current;

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Instant Quote: ",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        if (current.etype == Etype.balcony ||
            current.etype == Etype.front ||
            current.etype == Etype.gazebo) ...[
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: InkWell(
              onTap: () => _launchUrl('tel:8776947788'),
              child: Text(
                'Call us for the best price',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              '\$${current.price.toString()}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => _launchUrl('tel:8776947788'),
              child: Text(
                '+1 (877) 694- 7788 Call now to lock in this price',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
