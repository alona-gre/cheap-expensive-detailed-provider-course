import 'package:detailed_provider_course/providers/object_provider.dart';
import 'package:detailed_provider_course/widgets/cheap_object_widget.dart';
import 'package:detailed_provider_course/widgets/expensive_object_widget.dart';
import 'package:detailed_provider_course/widgets/object_provider_widget.dart';
import 'package:uuid/uuid.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ObjectProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child: CheapObjectWidget()),
                Expanded(child: ExpensiveObjectWidget()),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: ObjectProviderWidget(),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    context.read<ObjectProvider>().stop();
                  },
                  child: const Text('Stop'),
                ),
                TextButton(
                  onPressed: () {
                    context.read<ObjectProvider>().start();
                  },
                  child: const Text('Start'),
                ),
              ],
            )
          ],
        ));
  }
}
