import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ExtrasSection extends StatelessWidget {
  const ExtrasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 954,
        height: 366,
        child: Row(
          children: [
            Container(
              width: 191,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/fresh_merch.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                //Imagenes de arriba
                Row(
                  children: [
                    //Imagen del Logo
                    Container(
                      width: 362 / 2,
                      height: 170 / 2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/image_u-wifi.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    //Accesorios
                    Container(
                      width: 362 / 2,
                      height: 170 / 2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/internet_accesories.png?t=2024-01-09T19%3A33%3A27.960Z"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                //Carrousel
                Container(
                  width: 762,
                  height: 200,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                    ),
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(color: Colors.amber),
                              child: Text(
                                'text $i',
                                style: TextStyle(fontSize: 16.0),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ContainerTestWidget extends StatelessWidget {
  const ContainerTestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 954,
      height: 366,
      child: Row(
        children: [
          Container(
            width: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/fresh_merch.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Column(
            children: [
              //Imagenes de arriba
              Row(),
              //Carrousel
              Row(),
            ],
          )
        ],
      ),
    );
  }
}
