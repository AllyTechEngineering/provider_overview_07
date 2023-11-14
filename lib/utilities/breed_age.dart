import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_overview_07/models/dog.dart';
import 'package:provider_overview_07/utilities/age.dart';

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '- breed: ${context.select<Dog, String>((Dog dog) => dog.breed)}',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Age(),
      ],
    );
  }
}
