import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut_2/models/thememodel.dart';
import 'package:provider_tut_2/provider/example_one_provider.dart';
import 'package:provider_tut_2/screens/example_two.dart';

class ExampleOne extends StatefulWidget {
  ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    final valueprovider = Provider.of<ExampleOneProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, value, child) {
            return Text("Subscribers ${valueprovider.value}");
          },
        ),
        centerTitle: true,
        actions: [
          Switch(
            value: valueprovider.isChecked,
            onChanged: (bool value) {
              valueprovider.setisChanged(ischange: value);
              ThemeModel.ischangeThem = value;
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Subscribers ${valueprovider.value}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Slider(
                min: 0,
                max: 1,
                value: valueprovider.value,
                onChanged: (ValueKey) {
                  valueprovider.setValue(value: ValueKey);
                }),
            Row(
              children: [
                Consumer(
                  builder: (context, value, child) {
                    return Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color:
                                Colors.green.withOpacity(valueprovider.value)),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(valueprovider.value)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExampleTwo()));
                    },
                    child: const Text("Move Next Screen")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
