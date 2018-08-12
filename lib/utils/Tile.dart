import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  final URL = '';

  const Tile( this.image, this.title, this.desc );

  @override
  Widget build(BuildContext context) {
    return new Card(
        color: Colors.white,
        child: new InkWell(
            onTap: (){},
            child: Column(
              children: [
                  new Image.asset(
                      image,
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          desc,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
              ]
            )
        )
    );
  }
}

