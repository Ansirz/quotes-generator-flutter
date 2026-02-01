import 'package:flutter/material.dart';
class Quote extends StatelessWidget {
  final String quote;
  final String author;
  const Quote({
    super.key,
    required this.author,
    required this.quote
   });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$quote - $author",
      style: TextStyle(
            fontSize: 17.0,
            letterSpacing: 1.4,
            
          ),
    );
  }
}