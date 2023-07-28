import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  final List<String> imagenes = [
    "https://e.rpp-noticias.io/xlarge/2020/04/23/082208_932018.jpg",
    "https://www.animenachrichten.de/wp-content/uploads/2020/12/Chainsaw-Man-Newsbild-Dezember-2020-696x411.jpg",
    "https://indiehoy.com/wp-content/uploads/2022/05/naruto.jpg",
    "https://media.gq.com.mx/photos/63af4e52bbea90257569711d/16:9/w_2560%2Cc_limit/1198624.jpg",
    "https://s.yimg.com/uu/api/res/1.2/kQU9_eAHNigPZekWCQzx2A--~B/Zmk9ZmlsbDtoPTQ5Mjt3PTg3NTthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2022-12/2310f680-7a50-11ed-bde4-4b3a7568cc97.cf.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Swiper App Bar"),
        ),
        body: Container(
          child: swiper(),
        ),
      ),
    );
  }

  Widget swiper() {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            imagenes[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: imagenes.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
