import 'dart:math';

import 'package:flutter/material.dart';

import 'package:shake/shake.dart';

import 'package:vibration/vibration.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  ShakeDetector? detector;
  var activeDiceImage = 'assets/images/dice-1.png';

 void rollTheDice() async {
  if (await Vibration.hasVibrator()) {
    Vibration.vibrate(duration: 200);
  }
    setState(() {
      activeDiceImage =
          'assets/images/dice-${Random().nextInt(6) + 1}.png';
    });
  }

 @override
  void initState() {
    super.initState();

    detector = ShakeDetector.autoStart(
      onPhoneShake: (event) {
        rollTheDice();
      },
    );
  }

  @override
  void dispose() {
    detector?.stopListening();
    super.dispose();
  }

 
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: 
          TextButton(
            onPressed: rollTheDice,
          child:Image.asset(
            activeDiceImage,
            width: 200,
            height: 200,
          ),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollTheDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll the Dice'),
        ),
      ],
    );
  }
}