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
      messagem: "Você já fez sua segunda doação de sangue! Continue assim!",
      recompensa: "Aproveite 10% de desconto em farmácias parceiras",
      path_image: "./images/conquistas/2op.jfif",
      completed: false
    ),
    Conquista(
      messagem: "Parabéns, você completou 3 doações de sangue!",
      recompensa: "Ganhe 15% de desconto em academias parceiras.",
      path_image: "./images/conquistas/lula.jfif",
      completed: false
    ),
   
    Conquista(
      messagem: "Você é um doador frequente! 7 doações feitas",
      recompensa: "Ganhe 20% de desconto em padarias e lojas de alimentos parceiras.",
      path_image: "./images/conquistas/alegre.jfif",
      completed: false
    ),
 
    Conquista(
      messagem: "Parabéns, você fez 15 doações de sangue! Você é um verdadeiro herói.",
      recompensa: "Aproveite 25% de desconto em academias parceiras ou farmácias.",
      path_image: "./images/conquistas/tesoura.jfif",
      completed: false
    ),
    Conquista(
      messagem: "Você é um exemplo para todos! 25 doações já feitas!",
      recompensa: "Ganhe 30% de desconto em farmácias ou produtos alimenticios",
      path_image: "./images/conquistas/7op.jfif",
      completed: false
    ),
    Conquista(
      messagem: "Você se tornou um super doador! 30 doações de sangue!",
      recompensa: "Ganhe 25% de desconto em todas as lojas parceiras e um vale-presente especial para ser usado nas lojas de sua escolha.",
      path_image: "./images/conquistas/superdoador.jfif",
      completed: false
    ),
    //Adiciona as novas a partir desta linha Anderson, entre a vírgula da linha 9 e o colchete da linha 11
    ];
}