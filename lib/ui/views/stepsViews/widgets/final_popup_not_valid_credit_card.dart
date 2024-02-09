import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';

class FinalPopupNotValidCreditCard extends StatelessWidget {
  const FinalPopupNotValidCreditCard({Key? key}) : super(key: key);

  //El slider de extensiones sigue pendiente
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool mobile = size.width < 1024 ? true : false;
    return AlertDialog(
      clipBehavior: Clip.antiAlias,
      contentPadding: const EdgeInsets.all(0.0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(35.0))),
      backgroundColor: colorBgW,
      content: Container(
        padding: const EdgeInsets.all(20.0),
        width: 600,
        decoration: buildBoxDecoration('images/bg_gradient.png'),
        child: Container(
          padding: EdgeInsets.all(mobile ? 10.0 : 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fail request!",
                style: GoogleFonts.poppins(
                  height: 1.5,
                  fontSize: 35,
                  color: colorInversePrimary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.0,
                ),
              ),
              Text(
                "Your credit card is not valid.\nPlease try again",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  height: 1.5,
                  fontSize: mobile ? 16 : 24,
                  color: colorInversePrimary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.50,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: colorSecondary,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Close',
                  style: GoogleFonts.workSans(
                    height: 1.5,
                    fontSize: 14,
                    color: colorInversePrimary,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration(String image) {
    return BoxDecoration(
      image: DecorationImage(
        alignment: Alignment.bottomCenter,
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }
}
