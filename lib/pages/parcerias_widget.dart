import 'package:flutter/material.dart';
import 'package:sangue_connect/data/list_loja.dart';
import 'package:sangue_connect/pages/detalhes_lojas.dart';

class ParceriasWidget extends StatelessWidget{
  const ParceriasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 150,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const Divider( 
              color: Colors.grey,
              thickness: 1,
              height: 16,
            );
          },
          itemBuilder: (context, index) {
          var loja = ListLoja().listLojas[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
             child: Row(
               children: [
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(loja.imagePath, height: 80, width: 80,)),
                const SizedBox(width: 10,),
                SizedBox(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text(loja.nome, style: const TextStyle(fontSize: 16, color: Colors.black),),
                      const SizedBox(height: 5,),
                      Text(loja.descricao),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Center(
                     child: TextButton(
                        child: const Text("Ver Detalhes"),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> DetalhesLojas(loja: loja))),
                        ),
                   ),
                 ),
                    ]
                  ),
                ),
               ],
             ),
              ),
          );
        },
        itemCount: ListLoja().listLojas.length,
      ),
    );
  }
}