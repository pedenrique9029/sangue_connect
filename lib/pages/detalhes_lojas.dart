import 'package:flutter/material.dart';
import 'package:sangue_connect/models/loja.dart';

class DetalhesLojas extends StatelessWidget{
  Loja loja;
  DetalhesLojas({required this.loja, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loja.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 15,),
              ClipRRect(borderRadius: BorderRadius.circular(75) , child: Image.asset(loja.imagePath, height: 120, width: 120,)),
              const SizedBox(width: 15,),
            SizedBox(
              width: 300,
              child: Text(loja.descricao)),
            ],
          ),
          const SizedBox(height: 15,),
          const Row(
                  children: [
                    Text("Endereço:", style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(width: 5,),
                    Text("Rua X, 123, Bairro Qbv")
                  ],
                ),
          ]
            ),
      ));
}}