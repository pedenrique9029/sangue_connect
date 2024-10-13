import 'package:flutter/material.dart';
import 'package:sangue_connect/pages/perfil_widget.dart';
import 'package:sangue_connect/pages/postos_widget.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('pt_BR', null).then((_) {
  runApp(const MainApp());
});
}

const colorTab = 0xAD9F1111;

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              labelColor: Color(colorTab),
              indicatorColor: Color(colorTab),
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.local_hospital_outlined)),
              ],
            ),
            title: const Text('Sangue Connect'),
          ),
          body: const TabBarView(
            children: [
              PerfilWidget(),
              PostosWidget()
            ],
          ),
        ),
      ),
    );
  }
}
