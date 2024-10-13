import 'package:flutter/material.dart';
import 'package:sangue_connect/main.dart';
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
              TextButton(onPressed: () => {
                print("Clicou Detalhes")
              },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
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
                const Padding(padding: EdgeInsets.only(left: 15, right: 15)),
              TextButton(onPressed: () => {
                print("Clicou Contatos")
              },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                ))),
                child: const Text('Contato',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),)),
            ]
          ),
          SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
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
        body: const TabBarView(
          children: [
            FrequenciaTab(),
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
  const ConquistasTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SizedBox(
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
            leading: const Icon(Icons.check_circle_outline, color: Colors.green, size: 20,),
            title: Text("Conquista $index"),
            subtitle: Text("Descricao $index"),
            );
        },
        itemCount: 10,
        ),
      ),
    );
  }
}
