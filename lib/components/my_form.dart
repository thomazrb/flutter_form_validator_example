import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  MyForm({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Digite seu nome completo',
              labelText: 'Nome',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'É necessário digitar um nome';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              icon: Icon(Icons.numbers),
              hintText: 'Digite sua idade',
              labelText: 'Idade',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'A idade é obrigatória';
              } else if (value.length < 2) {
                return 'Você é muito novo para usar este programa';
              } else {
                return null;
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tudo ok! Enviando os dados'),
                  ),
                );
              }
            },
            child: const Text('Enviar'),
          )
        ],
      ),
    );
  }
}
