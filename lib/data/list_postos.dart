import 'package:sangue_connect/models/posto.dart';

class ListPostos {
  List<Posto> listPostos = [
    Posto(
      nome: "Hospital Hanover",
      descricao: "O Hospital Hanover é especializado em doação de sangue, oferecendo um espaço acolhedor e seguro para doadores. Com uma equipe experiente, o hospital busca facilitar o processo de doação, ajudando a salvar vidas.", imagePath: "./images/postos/hospital_hanover.jpg"
    ),
    Posto(
      nome: "Hospital Piedade",
      descricao: "O Hospital Piedade é um centro dedicado à doação de sangue, promovendo um espaço acolhedor e acessível para todos os doadores. Com uma equipe atenciosa e experiente, o hospital facilita o processo de doação, assegurando que cada contribuição tenha um impacto significativo na vida de pacientes que precisam de transfusões.", imagePath: "./images/postos/hospital_piedade.jpg"
    ),
    Posto(
      nome: "Hospital Borcele",
      descricao: "O Hospital Borcele é voltado para a coleta de sangue, proporcionando um espaço seguro e confortável para os doadores. Com profissionais capacitados, o hospital agiliza o processo de doação, desempenhando um papel essencial no suporte a pacientes que dependem de transfusões para tratamentos médicos.", imagePath: "./images/postos/hospital_borcele.jpg"
    ),
    Posto(
      nome: "Hospital Cruz Vermelha",
      descricao: "O Hospital Cruz Vermelha é uma instituição dedicada à doação de sangue, oferecendo um ambiente acolhedor e moderno para os doadores. Com profissionais de saúde altamente treinados, o hospital garante um atendimento empático e seguro. Além de facilitar a doação, realiza campanhas de conscientização para promover a importância desse ato solidário, destacando como cada doador pode fazer a diferença na vida de pacientes que precisam de transfusões. A Cruz Vermelha é um verdadeiro pilar de apoio à saúde da comunidade.", imagePath: "./images/postos/hospital_cruzvermelha.jpg"
    ),
  ];
}