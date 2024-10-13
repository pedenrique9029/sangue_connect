import 'package:flutter/material.dart';

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
          return ListTile(
            leading: const Icon(Icons.local_hospital_outlined, color: Colors.green, size: 50,),
            title: Text("Posto $index"),
            contentPadding: const EdgeInsets.all(5),
            subtitle: TextButton(
              child: const Text("Ver Detalhes"),
              onPressed: () => {
                print("Detalhes do posto $index")
              },
              ),
            );
        },
        itemCount: 5,
      ),
    );
  }
}