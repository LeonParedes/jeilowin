import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>[
  {'elevation': 0.0,'label','Elevation 0'},
  {'elevation': 0.0,'label','Elevation 1'},
  {'elevation': 0.0,'label','Elevation 2'},
  {'elevation': 0.0,'label','Elevation 3'},
  {'elevation': 0.0,'label','Elevation 4'},
  {'elevation': 0.0,'label','Elevation 5'},
]
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  static const String screenName = 'card_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            ...cards.map((card)=>
            _CardType1(label: card['label'],elevation: card['elevation'])),
            ...cards.map((card)=>
            _CardType2(label: card['label'],elevation: card['elevation'])),  
          ],
        )
      ),
    );
  }
}
class _CardType1 extends StatelessWidget{
  final String label;
  final double elevation;
  const _CardType1({required this.label, required this.elevation );

 Widget build(BuildContext context)=> Card(
    elevation: elevation,
    child: Padding(padding: const EdgeInsets.fromLTRB(20,25,20,20),
    child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded))),
            Align(alignment: Alignment.bottomLeft,
            child: Text(label)
            )
          ],
    ),),
 );
 
}