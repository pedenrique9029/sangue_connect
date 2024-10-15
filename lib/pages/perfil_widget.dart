import 'package:flutter/material.dart';
import 'package:sangue_connect/data/listconquistas.dart';
import 'package:sangue_connect/main.dart';
import 'package:sangue_connect/models/conquista.dart';
import 'package:table_calendar/table_calendar.dart';

class PerfilWidget extends StatelessWidget {
  const PerfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
              ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "./images/heron_perfil.jpg",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Nome do Doador',style: TextStyle(fontSize: 20),),
                  Text('AB Positivo, 25 anos',style: TextStyle(color: Color.fromARGB(217, 59, 59, 59))),
                ]
              )
              ]
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: TextButton(onPressed: () => {
                    print("Clicou Detalhes")
                  },
                    style: ButtonStyle(
                      //backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                    ))),
                    child: const Text('Detalhes', 
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                    )),
                ),
              ),
                const Padding(padding: EdgeInsets.only(left: 15, right: 15)),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: TextButton(onPressed: () => {
                    print("Clicou Contatos")
                  },
                    child: const Text('Contato',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),)),
                ),
              ),
            ]
          ),
          SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 500,
                child: const InformationPerfil(),
            ),
        ]
    );
  }
}

class InformationPerfil extends StatelessWidget {
  const InformationPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Color(colorTab),
            labelColor: Color(colorTab),
            tabs: [
              Tab(text: 'Frequência'),
              Tab(text: 'Conquistas'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const FrequenciaTab(),
            ConquistasTab()
          ],
        ),
      ),
    );
  }
}
var now = DateTime.now();
var firstDay = DateTime(now.day, now.month-3, now.day);
var lastDay = DateTime(now.year, now.month+3, now.day);

class FrequenciaTab extends StatelessWidget {
  const FrequenciaTab({super.key});
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
      ),
      currentDay: now,
      focusedDay: now, firstDay: firstDay, lastDay: lastDay,
      availableCalendarFormats: const{
        CalendarFormat.week: "Semana",
        CalendarFormat.month: "Mês",
        },
        locale: 'pt_Br',
        calendarBuilders: CalendarBuilders(
          markerBuilder: (context, day, events) {
            if(day.day ==5 || day.day ==25 ) {
              return const Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 2.0,
                      child: Icon(
                      Icons.water_drop,
                      size: 15,
                      color: Colors.red,
                      )
                  ), 
                  ]
                );
            }
            return null;}
        ),
      );
  }
}

class ConquistasTab extends StatelessWidget {
  ConquistasTab({super.key});

  List<Conquista> conquistas = ListConquistas().list_conquistas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SizedBox(
        height: 150,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15,);
          },
          itemBuilder: (context, index) {
          var conquista = conquistas[index];
          return Opacity(
            opacity: conquista.completed ? 1:0.45,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 1, 1),
                            width: 5
                          )
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(50), child: Image.asset(conquista.path_image, height: 75, width: 75,))),
                    ),
                    SizedBox(
                      width: 295,
                      child: Column(
                        children: [
                          Text(conquista.messagem, style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 44, 44, 44)
                          ),),
                          Text(conquista.recompensa, style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 85, 85, 85)
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ),
          );
        },
        itemCount: conquistas.length,
        ),
      ),
    );
  }
}
