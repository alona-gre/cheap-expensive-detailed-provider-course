import 'package:detailed_provider_course/providers/object_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../objects/base_object.dart';

class ExpensiveObjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expensiveObj = context.select<ObjectProvider, ExpensiveObject>(
      (provider) => provider.expensiveObject,
    );
    return Container(
      height: 100,
      color: Colors.blue,
      child: Column(
        children: [
          const Text('Expensive Widget'),
          const Text('Last Updated'),
          Text(expensiveObj.lastUpdated),
        ],
      ),
    );
  }
}
