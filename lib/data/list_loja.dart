import 'package:sangue_connect/models/loja.dart';

class ListLoja {
  List<Loja> listLojas = [
    Loja(nome: "DrugStore", 
    descricao: "A DrugStore é uma farmácia inovadora que vai além do cuidado com a saúde ao oferecer um diferencial único: ao doar sangue, os clientes ganham descontos especiais em seus produtos. Com um ambiente moderno e acolhedor, a farmácia busca incentivar a solidariedade e o bem-estar da comunidade.",
     imagePath: "./images/lojas/drug_store.jpg"),
    Loja(nome: "STRONG", 
    descricao: "A STRONG é uma academia moderna focada em alta performance, que oferece descontos nas mensalidades para quem doa sangue. Com uma campanha que incentiva a solidariedade, os alunos ganham vantagens exclusivas ao contribuírem com a comunidade. A academia dispõe de áreas de musculação, aulas funcionais, crossfit, yoga e mais, além de contar com instrutores qualificados para atendimento personalizado. O ambiente é acolhedor, com foco em saúde integral, unindo o cuidado com o corpo à responsabilidade social.", 
    imagePath: "./images/lojas/strong.jpeg"),
    Loja(nome: "Burguer Café",
     descricao: "A Burguer Café é uma lanchonete aconchegante que combina o melhor dos hambúrgueres artesanais com um delicioso café. Além de ser o lugar ideal para quem busca uma refeição saborosa, a lanchonete tem um diferencial solidário: ao doar sangue, os clientes ganham descontos especiais no cardápio.", 
     imagePath: "./images/lojas/burguer.jpeg"),
    Loja(nome: "Pharmacy",
     descricao: "A Pharmacy é uma farmácia moderna e acessível que coloca a saúde e o bem-estar da comunidade em primeiro lugar. Além de oferecer uma vasta gama de medicamentos, produtos de higiene pessoal e itens de cuidado diário, a Pharmacy se destaca por sua campanha de solidariedade: os clientes que doam sangue recebem descontos especiais em suas compras.",
      imagePath: "./images/lojas/farmac.jpeg"),
    
  ];
}