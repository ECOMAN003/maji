import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maji/providers/hydration_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final waterCount = ref.watch(hydrationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),),
        body: Center(
          child: Column(
            children: [
              Text("Water intake: $waterCount ml"),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ref.read(hydrationProvider.notifier).state += 250;
                },
                child: const Text('Add 250 ml',),
              ),
            ],
          ),
        )
    );
  }
}