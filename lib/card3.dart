import 'dart:developer';
import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://a.cdn-hotels.com/gdcs/production194/d1228/248b80ea-5b1a-434a-ad7a-44e83d072ae9.jpg?impolicy=fcrop&w=1600&h=1066&q=medium'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //1
                    color: Colors.black.withOpacity(0.6),
                    //2
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                Container(
                    //3
                    padding: const EdgeInsets.all(16),
                    //4
                    child: Column(
                      //5
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //6
                        const Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 40,
                        ),
                        //7
                        const SizedBox(height: 8),
                        //8
                        Text(
                          'Guia Turístico',
                          style: GpsdoMundoTheme.darkTextTheme.headline2,
                        ),
                        //9
                        const SizedBox(height: 30),
                      ],
                    )),
                Center(
                    //1
                    child: Wrap(
                  //12
                  alignment: WrapAlignment.start,
                  //13
                  spacing: 12,
                  //14
                  runSpacing: 12,
                  //15
                  children: [
                    Chip(
                      label: Text('Natureza',
                          style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        log('delete');
                      },
                    ),
                    Chip(
                      label: Text('Água',
                          style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        log('delete');
                      },
                    ),
                    Chip(
                      label: Text('Arquitetura',
                          style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        log('delete');
                      },
                    )
                  ],
                ))
              ],
            )));
  }
}
