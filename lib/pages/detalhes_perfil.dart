import 'package:flutter/material.dart';

class DetalhesPerfil extends StatelessWidget{
  const DetalhesPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Perfil'),
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "./images/heron_perfil.jpg",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Nome do Doador',style: TextStyle(fontSize: 20),),
                    Text('60 XP'),
                    ]
                )
                ]
              ),
            ),
            const SizedBox(height: 15,),
            const Text('Tipo Sanguíneo: AB Positivo'), 
            const Text('Idade: 25 anos'),
            const Text('Peso: 63kg'),
            const Text("Data da última tatuagem: 3 anos atrás"),
            const Text("Frequência de doação: 2x em um ano"),
            const Text("Data da última doação: 05/10/2024"),
            const SizedBox(height: 30,),
            const Center(child: Text("Situação: Indisponível por doação recente."),)

            ]),
      )
    );
}}