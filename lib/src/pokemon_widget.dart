import 'package:flutter/material.dart';

import 'controllers/pokemon_controller.dart';
import 'models/pokemon_model.dart';

class Pokemon extends StatelessWidget {
  final int num;

  const Pokemon({Key key, @required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<PokemonModel>(
        future: PokemonController.get(num),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) return CircularProgressIndicator();
          return Column(
            children: [
              Text(
                  '#${snapshot.data.id.toString().padLeft(3, '0')} - ${snapshot.data.name}'),
              Image.network(snapshot.data.image),
            ],
          );
        },
      ),
    );
  }
}
