import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        //1
        child: Container(
      constraints: const BoxConstraints.expand(
        width: 350,
        height: 450,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://cognatis.com.br/wp-content/uploads/2021/01/Sao-Paulo-467-banner-1.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      //2
      child: Column(children: [
        const AuthorCard(
          authorName: 'Antonella',
          title: 'Software Engineer',
          imageProvider: NetworkImage(
              'https://julianafonte.com.br/wp-content/uploads/2018/02/dermato-estetica-macas-do-rosto-750x500.jpg'),
        ),
        Expanded(
          //2
          child: Stack(
            children: [
              //3
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  'Sampa',
                  style: GpsdoMundoTheme.lightTextTheme.headline1,
                ),
              ),
              //4
              Positioned(
                bottom: 70,
                left: 16,
                child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Ponte Estaiada',
                      style: GpsdoMundoTheme.lightTextTheme.headline1,
                    )),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
