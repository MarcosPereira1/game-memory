import 'package:flutter/material.dart';
import 'package:flutter_game/theme.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            'images/host.png',
            width: 80.0,
            height: 125.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: RichText(
            text: TextSpan(
                text: 'Round 6 ',
                style: DefaultTextStyle.of(context).style.copyWith(fontSize: 30.0),
                children: const [
                  TextSpan(
                    text: 'Memory',
                    style: TextStyle(color: Round6Theme.color),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
