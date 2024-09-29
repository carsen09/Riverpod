import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// SecondPage sekarang menggunakan Riverpod untuk mengakses state
class SecondPage extends ConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Ambil value dari provider yang sama (misalnya, nameProvider)
    final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang $name', // Menampilkan nama yang diambil dari provider
              style: const TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Main Page'),
            ),
          ],
        ),
      ),
    );
  }
}
