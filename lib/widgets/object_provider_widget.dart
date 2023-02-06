import 'package:detailed_provider_course/providers/object_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();
    return Container(
      height: 100,
      color: Colors.purple,
      child: Column(
        children: [
          const Text('Expensive Widget'),
          const Text('Last Updated'),
          Text(provider.id),
        ],
      ),
    );
  }
}
