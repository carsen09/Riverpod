import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/second_page.dart';

// Provider untuk mengelola state nama
// final nameProvider = Provider<String>((ref) {
//   return 'Riverpod'; // Nilai default
// });

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Ambil value dari provider
    final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            name, // Menampilkan nama dari provider
              style: const TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
