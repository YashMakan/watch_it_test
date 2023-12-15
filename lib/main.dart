import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';
import 'package:watch_it_test/dependencies.dart';
import 'package:watch_it_test/models/counter_model.dart';
import 'package:watch_it_test/widgets/counter_image_widget.dart';
import 'package:watch_it_test/widgets/counter_text_field_widget.dart';
import 'package:watch_it_test/widgets/counter_text_widget.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch_it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget with WatchItMixin {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("watch_it: State Management!"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterTextWidget(),
            CounterTextFieldWidget(),
            CounterImageWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          di<CounterModel>().counter.value++; // counter = counter + 1;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
