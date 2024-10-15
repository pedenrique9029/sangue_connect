import 'package:sangue_connect/models/conquista.dart';

class ListConquistas {
  List<Conquista> list_conquistas = [
    Conquista(
      messagem: "Parabéns, você fez sua primeira doação de sangue!",
      recompensa: "Ganhe 20% de desconto em qualquer uma das nossas lojas parceiras.",
      path_image: "./images/conquistas/primeira_doacao.jpg",
      completed: true
    ),
    Conquista(
      messagem: "Parabéns, você fez sua primeira doação de sangue!",
      recompensa: "Ganhe 20% de desconto em qualquer uma das nossas lojas parceiras.",
      path_image: "./images/conquistas/primeira_doacao.jpg",
      completed: false
    ),
    //Adiciona as novas a partir desta linha Anderson, entre a vírgula da linha 9 e o colchete da linha 11
    ];
}