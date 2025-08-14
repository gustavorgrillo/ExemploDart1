import 'package:flutter/material.dart';

void main() {
  runApp(const SandubaApp());
}

class SandubaApp extends StatelessWidget {
  const SandubaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sanduba!'),
          backgroundColor: Colors.deepOrange, // Adjusted to red/orange
          centerTitle: true,
        ),
        body: const SandubaHomePage(),
      ),
    );
  }
}

class SandubaHomePage extends StatelessWidget {
  const SandubaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Placeholder para a imagem, já que DartPad não suporta assets locais
          SizedBox(
            width: 200, // Increased width for better visibility of the image
            height: 200, // Increased height for better visibility of the image
            child: Image.network(
              'https://admin.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/hamburguer-unsplash.jpg?w=1200&h=1200&crop=1',
              fit: BoxFit.cover, // Ensures the image covers the container
            ),
          ),
          const SizedBox(height: 20), // Increased spacing
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0), // Added horizontal padding
            child: Text(
              'Delicioso hambúrguer artesanal com carne suculenta, queijo derretido, alface, tomate e molho especial.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16), // Increased font size for readability
            ),
          ),
          const SizedBox(height: 20), // Increased spacing
          Text(
            'R\$ 23,99',
            style: TextStyle(
              fontSize: 32, // Increased font size
              fontWeight: FontWeight.bold,
              color: Colors.green[700], // Changed to green
            ),
          ),
          const SizedBox(height: 20), // Increased spacing
          ElevatedButton(
            onPressed: () {
              // Ação do botão (pode ser expandida no futuro)
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Adicionado ao carrinho!')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange, // Changed to red/orange
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18), // Increased padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Added rounded corners
              ),
            ),
            child: const Text(
              'Adicionar ao Carrinho',
              style: TextStyle(fontSize: 20, color: Colors.white), // Increased font size
            ),
          ),
        ],
      ),
    );
  }
}
