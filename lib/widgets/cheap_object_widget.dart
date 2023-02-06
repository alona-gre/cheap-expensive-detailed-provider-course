import 'package:detailed_provider_course/providers/object_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../objects/base_object.dart';

class CheapObjectWidget extends StatelessWidget {
  const CheapObjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapObj = context.select<ObjectProvider, CheapObject>(
        (provider) => provider.cheapObject);
    return Container(
      height: 100,
      color: Colors.yellow,
      child: Column(
        children: [
          const Text('Expensive Widget'),
          const Text('Last Updated'),
          Text(cheapObj.lastUpdated),
        ],
      ),
    );
  }
}
