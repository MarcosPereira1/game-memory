import 'package:flutter/material.dart';
import 'package:flutter_game/theme.dart';
import 'package:flutter_game/widgets/logo.dart';
import 'package:flutter_game/widgets/recordes.dart';
import 'package:flutter_game/widgets/start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            StartButton(
              title: 'Modo Normal',
              color: Colors.white,
              action: () {},
            ),
            StartButton(
              title: 'Modo Round 6',
              color: Round6Theme.color,
              action: () {},
            ),
            const SizedBox(height: 60.0),
            const Recordes(),
          ],
        ),
      ),
    );
  }
}
