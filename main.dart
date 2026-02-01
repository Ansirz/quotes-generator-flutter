import 'package:flutter/material.dart';
import 'quote.dart';
import 'dart:math';
class QuoteGen extends StatefulWidget {
  const QuoteGen({super.key});

  @override
  State<QuoteGen> createState() => _QuoteGenState();
}

class _QuoteGenState extends State<QuoteGen> {
   List <Quote> quotes = [
      Quote(author:"Franz Kafka" , quote: "I ran from love coz i knew it would destroy me",),
      Quote(author:"Unknown" , quote: "Why have a limit when you can be limitless?",),
       Quote(author:"Dostovsky" , quote: "Can I kill one to save many?",),
      Quote(author:"Hamlet" , quote: "To be or not to be. That is the question.",)
    ];
     var random = Random();
    int index = 0;
  @override
  Widget build(BuildContext context) {
   
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes Generator"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
         quotes[index],
         SizedBox(
          height: 30.0,
         ),
         ElevatedButton(
        onPressed: () {
          setState(() {
            index = random.nextInt(quotes.length);

          });
         }, 
        child: Text(
          "Generate Quote",
          
        ))
          ]
        ),
      
        
      )
      
    );
  }
}