import 'package:flutter/material.dart';

class CityLocationWidget extends StatelessWidget {
  const CityLocationWidget({super.key, required this.location});
  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.location_on),
        const SizedBox(width: 12.0),
        SizedBox(
          width: 200,
          child: Text(
            location,
            style: Theme.of(context).textTheme.displayMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
