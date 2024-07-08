import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;

  const Button({super.key, required this.title, 
  this.color = Colors.grey, required this.onpress   });

  @override
  Widget build(BuildContext context) {
    return Expanded (
      child: Padding(
        padding: const EdgeInsets.symmetric( vertical: 12 ),
        
        child: InkWell (
          onTap: onpress,
          

          child: Container(
            height: 60,
            decoration:  BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(child: Text  (title , style: const TextStyle( fontSize: 20, color: Colors.white )   )),
          ),
        ),
      ),
    );
  }
}