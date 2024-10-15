import 'package:flutter/material.dart';

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
          return Padding(
            padding: const EdgeInsets.fromLTRB(8,0,0,0),
            child: ListTile(
              leading: const Icon(Icons.add_business, color: Colors.green, size: 50,),
              title: Text("Loja $index"),
              contentPadding: const EdgeInsets.all(5),
              subtitle: TextButton(
                child: const Text("Ver Detalhes"),
                onPressed: () => {
                  print("Detalhes da empresa $index")
                },
                ),
              ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}