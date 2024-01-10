import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';

class ExtrasSection extends StatelessWidget {
  const ExtrasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.12,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/fresh_merch.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Imagenes de arriba
                  Row(
                    children: [
                      //Imagen del Logo
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.19,
                            height: 150,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/image_u-wifi.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Accesorios
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.19,
                            height: 150,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/internet_accesories.png?t=2024-01-09T19%3A33%3A27.960Z"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Carrousel
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 200,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.4,
                        autoPlay: true,
                      ),
                      items: [1, 2, 3, 4].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 135,
                                    height: 135,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage("https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/u-wifi%20phone%20case.png"),
                                        fit: BoxFit.fill,
                                        ),
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(11.29),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                  "Powerbank 20,000",
                                    style: TextStyle(
                                    color: colorBgDark,
                                    fontSize: 14.0,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const Text(
                                    "\$29.99",
                                    style: TextStyle(
                                    color: colorBorder,
                                    fontSize: 15.9,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
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
