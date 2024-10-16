import 'package:flutter/material.dart';
import 'package:sangue_connect/data/list_postos.dart';

class PostosWidget extends StatelessWidget{
  const PostosWidget({super.key});

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
          var posto = ListPostos().listPostos[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
             child: Row(
               children: [
                SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(posto.imagePath, height: 80, width: 80,)),
                SizedBox(width: 10,),
                SizedBox(
                  width: 350,
                  child: Column(
                    children: [
                      Text(posto.nome, style: TextStyle(fontSize: 16, color: Colors.black),),
                      Text(posto.descricao),
                 TextButton(
                    child: const Text("Ver Detalhes"),
                    onPressed: () => {
                      print("Detalhes do posto $index")
                    },
                    ),
                    ]
                  ),
                ),
               ],
             ),
              ),
          );
        },
        itemCount: ListPostos().listPostos.length,
      ),
    );
  }
}