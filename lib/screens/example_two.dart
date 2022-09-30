import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut_2/provider/example_one_provider.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provderVar = Provider.of<ExampleOneProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              provderVar.count.toString(),
              style: const TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                provderVar.increament();
              },
              child: const Text("Increament"))
        ],
      ),
    );
  }
}
