import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// ANALISIS TERHADAP SETSTATE
/* 
setState adalah metode dalam Flutter yang digunakan untuk memberi tahu 
framework bahwa state dari sebuah StatefulWidget telah berubah. Ketika setState 
dipanggil, Flutter akan merender ulang widget yang terpengaruh untuk memperbarui UI.

Kelebihan
Kemudahan Penggunaan: Mudah digunakan dan dipahami.
Responsif: Membuat aplikasi lebih responsif terhadap perubahan state.
Interaktivitas: Memungkinkan pembuatan aplikasi yang dinamis dan interaktif. */


// APA KEGUNAAN
/* setState adalah metode yang digunakan untuk memberi
 tahu framework bahwa ada perubahan dalam state dari
  StatefulWidget yang perlu dijadikan tampilan ulang
 */