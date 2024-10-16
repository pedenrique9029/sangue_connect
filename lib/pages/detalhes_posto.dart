import 'package:flutter/material.dart';
import 'package:sangue_connect/models/posto.dart';

class DetalhesPosto extends StatelessWidget{
  Posto posto;
  DetalhesPosto({required this.posto, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(posto.nome),
      ),
      body: Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 15,),
            ClipRRect(borderRadius: BorderRadius.circular(75) , child: Image.asset(posto.imagePath, height: 120, width: 120,)),
            const SizedBox(width: 15,),
          SizedBox(
            width: 300,
            child: Text(posto.descricao)),
          ],
        ),
        const SizedBox(height: 20,),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Endereço:", style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(width: 5,),
                  Text("Rua X, 123, Bairro Ddn")
                ],
              ),
              Row(
                children: [
                  Text("Contato:", style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(width: 5,),
                  Text("(11) 11111-1111")
                ],
              ),

            ],
          ),
        )
        ]
    ));
  }
}