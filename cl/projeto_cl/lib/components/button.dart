import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82,82,82,1);
  static const DEFAULT = Color.fromRGBO(112,112,112,1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final bool operadores;
  final void Function(String) cb;

    

  Button({
    required this.text,
     this.big = false,
     this.operadores = true,
     this.color = DEFAULT,
     required this.cb,
  });

   Button.big({
     required this.text,
     this.operadores = true,
     this.color = DEFAULT,
     required this.cb,
  }) : big = true;
    Button.operation({
     required this.text,
     this.operadores = true,
     this.color = OPERATION,
      required this.cb,
  }) : big = true ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        
          child: SizedBox(
          height: operadores ? (big ? 20 : 12) : 20,
          child: Container(
            margin: EdgeInsets.all(0.3),
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
            primary: this.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            
            )
            ),
            child: Text(
              text,
              style: TextStyle (
                color: Colors.white,
                fontSize:32,
                fontWeight: FontWeight.w200,
              ),
              ),
            onPressed: () => cb(text),
            ),
          ),
        ),
      );
    }
 }