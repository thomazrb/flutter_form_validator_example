import 'package:flutter/material.dart';

import '../components/my_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Validação de Formulários'),
      ),
      body: MyForm(),
    );
  }
}
