import 'package:ev_diag/native.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Battery Windows"),
      ),
      body: Center(
        child: FutureBuilder( // All Rust functions are called as Future's
          future: api.helloWorld(), // The Rust function we are calling.
          builder: (context, data) {
            if (data.hasData) {
              return Text(data.data!); // The string to display
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
