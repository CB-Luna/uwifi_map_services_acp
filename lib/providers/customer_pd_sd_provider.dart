

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_maps/google_maps.dart';
import 'package:uwifi_map_services_acp/helpers/globals.dart';
import 'package:uwifi_map_services_acp/models/state.dart';

class CustomerPDSDProvider with ChangeNotifier {
  List<States> states = [];
  Map<String, String> stateCodes = {};

  CustomerPDSDProvider({bool notify = true}) {
    getStates(notify: notify);
  }

  //Función para recuperar el código del catálogo de "state"
  Future<void> getStates({bool notify = true}) async {
    try {
      states.clear();

      final res = await supabase.from('state').select().order(
            'code',
            ascending: true,
          );

      states = (res as List<dynamic>).map((state) => States.fromJson(jsonEncode(state))).toList();

      for (var state in states) {
        final newState = <String, String>{state.code : state.name};
        stateCodes.addAll(newState);
      }

      if (notify) notifyListeners();
    } catch (e) {
      log('Error en getStates() -$e');
    }
  }
  
  //Bandera Checkbox SD same as PD
  bool sameAsPD = true;

  // Personal Details
  GlobalKey<FormState> formKeyPD = GlobalKey<FormState>();
  GlobalKey<FormState> formKeyCC = GlobalKey<FormState>();
  final TextEditingController parsedFNamePD = TextEditingController(text: "");
  final TextEditingController parsedLNamePD = TextEditingController(text: "");
  final TextEditingController parsedPhonePD = TextEditingController(text: "");
  final TextEditingController parsedEmailPD = TextEditingController(text: "");
  final TextEditingController parsedAddress1PD = TextEditingController(text: "");
  final TextEditingController parsedAddress2PD = TextEditingController(text: "");
  final TextEditingController parsedZipcodePD = TextEditingController(text: "");
  final TextEditingController parsedCityPD = TextEditingController(text: "");
  final TextEditingController parsedStatePD = TextEditingController(text: "");
  

  LatLng? locatizationPD;
  

  // Shipping Details
  final TextEditingController parsedFNameSD = TextEditingController(text: "");
  final TextEditingController parsedLNameSD = TextEditingController(text: "");
  final TextEditingController parsedPhoneSD = TextEditingController(text: "");
  final TextEditingController parsedAddress1SD = TextEditingController(text: "");
  final TextEditingController parsedAddress2SD = TextEditingController(text: "");
  final TextEditingController parsedZipcodeSD = TextEditingController(text: "");
  final TextEditingController parsedCitySD = TextEditingController(text: "");
  final TextEditingController parsedStateSD = TextEditingController(text: "");
  final TextEditingController parsedStateCodeSD = TextEditingController(text: "");

  LatLng? locatizationSD;

  bool formValidationPD() {
    return (formKeyPD.currentState!.validate()) ? true : false;
  }

  void activeNotifyListeners() {
    notifyListeners();
  }


  void selectStateUpdateSD(String newState) {
    parsedStateSD.text = newState; 
    parsedStateCodeSD.text = stateCodes[newState] ?? "";
    notifyListeners();
  }

  //controllers for the Card Info
  final TextEditingController parsedName = TextEditingController(text: "");

  //Card Variables
  TextEditingController number = TextEditingController(text:"");
  TextEditingController cvv = TextEditingController(text:"");
  TextEditingController date = TextEditingController(text:"");
  TextEditingController cardName = TextEditingController(text:"");
  bool isCvvFocused = false;

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    number.text = creditCardModel.cardNumber;
    date.text = creditCardModel.expiryDate;
    cardName.text = creditCardModel.cardHolderName;
    cvv.text = creditCardModel.cvvCode;
    isCvvFocused = creditCardModel.isCvvFocused;
    notifyListeners();
  }
  

  
}