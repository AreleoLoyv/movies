import 'package:flutter/material.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';

// import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peliculas Piratas"),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[ 
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
              _swiperTarjetas(),
            ]
          ),
      )
      // SafeArea(
      //   child: Text("Hola Mundo")
      //   ),
    );
  }
  
  Widget _swiperTarjetas() {
    return CardSwiper(
      peliculas: [1,2,3,4,5],
    );
  }
    
} 


                                                    


