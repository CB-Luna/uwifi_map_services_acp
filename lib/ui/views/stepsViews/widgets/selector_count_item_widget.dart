import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';

// ignore: must_be_immutable
class SelectorCountItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String image;
  final double counter;
  bool isRequired = false;

  SelectorCountItemWidget(
    {
      Key? key, 
      required this.title, 
      required this.description, 
      required this.price, 
      required this.image, 
      required this.counter,
      required this.isRequired
    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: 750.0,
        height: 100.0,
        decoration: ShapeDecoration(
          color: isRequired ? colorPrimary : colorBgWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.88),
          ),
          shadows: const [
            BoxShadow(
              color: colorBoxShadow,
              blurRadius: 3.97,
              offset: Offset(0, 0.99),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: isRequired ? colorInversePrimary : colorBgBlack,
                        fontSize: 20.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: isRequired ? colorInversePrimary : colorBgBlack,
                        fontSize: 12.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            CustomizableCounter(
              count: counter,
              incrementIcon: Icon(
                Icons.add,
                color: isRequired ? colorInversePrimary : colorBgBlack,
              ),
              decrementIcon: Icon(
                Icons.remove,
                color: isRequired ? colorInversePrimary : colorBgBlack,
              ),
              textColor: isRequired ? colorInversePrimary : colorBgBlack,
              showButtonText: false,
            ),
            Text(
              '\$$price',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: isRequired ? colorInversePrimary : colorBgBlack,
                fontSize: 16.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            InkWell(
              child: Icon(
                Icons.delete_outline,
                color: isRequired ? colorInversePrimary : colorBgBlack,
              ),
              onTap: () {
                
              },
            )
          ],
        ),
      ),
    );
  }
}