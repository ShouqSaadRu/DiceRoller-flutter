import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  //سوينا كلاس ثاني لأن هنا صورة النرد بتحتاج تغيير متتالي لذلك استخدمنا statefulwidget not stateless
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    //لاحظي بدايتها تختلف عن statelesswidget
    //<> to inform dart which kind of state will be managed here
    return _DiceRollerState(); // a value of type DiceRoller and here we are calling a constructor function of class _DiceRollerState
  }
} //this function tells flutter to re excute build function الي تحت

//لازم نسوي كلاسين الثاني نسويه عشان قيمة الإرجاع الي فوقreturn
class _DiceRollerState extends State<DiceRoller> {
  // التسمية مهمة ويجب الالتزام بها والشرطة تحن تعني أن
  //the class is private يعني ما يمدينا نستخدمه برا
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
