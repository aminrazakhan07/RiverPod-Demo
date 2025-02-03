import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/Countor/conter_provider.dart';

class HomePageRevir extends ConsumerWidget {
  const HomePageRevir({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Home Page Revir')),
          Center(
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
    );
  }
}
