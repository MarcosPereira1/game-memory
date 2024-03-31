import 'package:flutter/material.dart';
import 'package:flutter_game/theme.dart';

enum Modo { normal, round6 }

class RecordesPage extends StatelessWidget {
  final Modo modo;
  final List<String> recs = ['Modo', 'Nível 8', 'Nível 10', 'Nível 12'];

  RecordesPage({Key? key, required this.modo}) : super(key: key);

  String getModo() {
    return modo == Modo.normal ? 'Normal' : 'Round 6';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recordes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 24),
                    child: Center(
                      child: Text(
                        'Modo ${getModo()}',
                        style: const TextStyle(fontSize: 28, color: Round6Theme.color),
                      ),
                    ),
                  )
                : ListTile(
                    title: Text(recs[index]),
                    trailing: const Text('X jogadas'),
                    tileColor: Colors.grey[900],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ));
          },
          itemCount: recs.length,
          separatorBuilder: (_, __) => const Divider(color: Colors.transparent),
        ),
      ),
    );
  }
}
