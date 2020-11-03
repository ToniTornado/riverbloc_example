import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverbloc/riverbloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}

final counterCubitProvider = BlocProvider((ref) => CounterCubit());

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      );
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterCubitProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context.refresh(counterCubitProvider),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Cast your vote for Flutter!'),
            const SizedBox(height: 30),
            Text('Votes: $counter', style: Theme.of(context).textTheme.headline5),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(counterCubitProvider).increment(),
        tooltip: 'Vote for Flutter',
        child: const Icon(Icons.ballot),
      ),
    );
  }
}
