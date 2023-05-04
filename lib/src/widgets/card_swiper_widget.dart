import 'package:flutter/material.dart';

import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


class CardSwiper extends StatelessWidget {


  List<dynamic> peliculas = [];


  CardSwiper({ required this.peliculas});

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top:10.0),
      width: _screenSize.width * 0.8,
      height: _screenSize.height * 0.5,
      child: Swiper(
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            child: Image.network(
              "https://github.gallerycdn.vsassets.io/extensions/github/copilotvs/1.82.1.0/1681746762772/Microsoft.VisualStudio.Services.Icons.Default",
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
            );
        },
        itemCount: peliculas.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
        ),
    );
  }
}