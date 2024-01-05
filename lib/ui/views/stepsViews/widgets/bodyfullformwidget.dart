import 'package:flutter/material.dart';

class BodyFullFormWidget extends StatelessWidget {
  const BodyFullFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 436,
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 33,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
               
                      ]),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 171,
                      child: Text(
                        'ACP Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 25.50,
                      height: 25.50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/25x25"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 84,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 25,
                padding: const EdgeInsets.only(right: 49),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'I Dont remember my ACP Number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 16,
                      height: 16,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19596078),
                            blurRadius: 5,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x28464E60),
                            blurRadius: 0,
                            offset: Offset(0, 0),
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 1,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 49,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
               
                      ]),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: SizedBox(
                        height: 34.01,
                        child: Text(
                          'ACP Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 3, left: 84, bottom: 1),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Same Billing and Shipping address',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const SizedBox(width: 11),
              Container(
                width: 21,
                height: 21,
                child: Stack(children: [
         
                ]),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 18.50,
            left: 10,
            right: 43,
            bottom: 18.50,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
               
                      ]),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Personal Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 255,
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 127),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 49,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
               
                      ]),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: SizedBox(
                        height: 34.01,
                        child: Text(
                          'First Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 49,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
               
                      ]),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: SizedBox(
                        height: 34.01,
                        child: Text(
                          'E-mail Address',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 308,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 25,
                height: 25,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(children: [
         
                ]),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                  height: 34.01,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 308,
          height: 49,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 25,
                height: 25,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(children: [
         
                ]),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: SizedBox(
                  height: 34.01,
                  child: Text(
                    'Last Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 436,
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 33,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
               
                      ]),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Shipping Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          top: 610,
          child: Container(
            width: 436,
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 33,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(children: [
                 
                        ]),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Payment Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 378,
          top: 534,
          child: Container(
            width: 160,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'Zipcode',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 38,
          top: 535,
          child: Container(
            width: 310,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'City',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 378,
          top: 458,
          child: Container(
            width: 308,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'Addres Line 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 378,
          top: 746,
          child: Container(
            width: 308,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'Card Number',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 378,
          top: 680,
          child: Container(
            width: 308,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'Cardholder’s Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 458,
          child: Container(
            width: 308,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'Address Line 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 38,
          top: 680,
          child: Container(
            width: 310,
            height: 194.86,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.89, color: Colors.white),
                borderRadius: BorderRadius.circular(10.63),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 310,
                    height: 194.86,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 310,
                          height: 194.86,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.93, 0.37),
                              end: Alignment(-0.93, -0.37),
                              colors: [Color(0xFF2B4584), Color(0xFF335B75), Color(0xFF15AF25)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.63),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 17.79,
                  top: 155.46,
                  child: Text(
                    'Jack Lewis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.63,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 266.58,
                  top: 160.46,
                  child: Text(
                    '06/23',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.63,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 15.94,
                  top: 18.60,
                  child: Container(
                    height: 21.26,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 16.83,
                          height: 21.26,
                          child: Stack(children: [
                   
                          ]),
                        ),
                        const SizedBox(width: 7.09),
                        SizedBox(
                          width: 65.25,
                          height: 13.84,
                          child: Text(
                            'Credit Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.63,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 263.06,
                  top: 88.71,
                  child: Container(
                    width: 31,
                    height: 23.91,
                    child: Stack(children: [
             
                    ]),
                  ),
                ),
                Positioned(
                  left: 255.09,
                  top: 18.60,
                  child: Container(
                    height: 21.26,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 38.97,
                          height: 21.26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                   
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 15.94,
                  top: 87.37,
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1234',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          '5678',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          '9101',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          '1121',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 378,
          top: 815,
          child: Container(
            width: 139,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'Exp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 538,
          top: 815,
          child: Container(
            width: 148,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
           
                  ]),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 34.01,
                    child: Text(
                      'CVV',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}