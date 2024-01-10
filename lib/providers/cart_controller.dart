import 'package:flutter/material.dart';
import '../classes/plan.dart';
import '../classes/product.dart';

class Cart with ChangeNotifier {
  double bundleDiscount = 0;
  int productsCategoryQty = 0;
  int badgeCounterTotal = 0;
  bool isSelected = false;
  bool isSupportedDevicesVisible = true;
  bool buttonVisible = true;
  bool aciveToogle = false;
  List<Product> products = [Product(
        id: 'uwifiService',
        name: "U-wifi Service Plan",
        cost: 30.0,
        imageurl: "",
        service: "uwifiPlan",
        description: "plan",
        quantity: 1,
        pwName: "U-wifi Service Plan")];
  
  List<Product> merchant = [
    Product(
        id: '1',
        name: "U-wifi Hat",
        cost: 11.99,
        imageurl: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/Black%20cap.png?t=2024-01-08T23%3A23%3A05.776Z",
        service: "uwifiPlan",
        description: "Black Baseball style hat, with chrome color U-wifi Logo.",
        quantity: 1,
        pwName: "U-wifi Hat 1"),
    Product(
        id: '2',
        name: "Powerbank 20,000",
        cost: 29.99,
        imageurl: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/powerbank%2020000.png",
        service: "uwifiPlan",
        description: "The 20,000 mAh power bank can recharge a smartphone up to 8 consecutive times.",
        quantity: 1,
        pwName: "Powerbank 20,000 2"),
    Product(
        id: '3',
        name: "Powerbank 10,000",
        cost: 19.99,
        imageurl: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/powerbank%2010000.png",
        service: "uwifiPlan",
        description: "The 10,000 mAh power bank can recharge a smartphone up to 4 consecutive times.",
        quantity: 1,
        pwName: "Powerbank 10,000 3"),
     Product(
        id: '4',
        name: "U-wifi Phone Case",
        cost: 9.99,
        imageurl: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/u-wifi%20phone%20case.png",
        service: "uwifiPlan",
        description: "Cover that protects the outside of your phone and acts as a guard to your gadget against scratches, grime, and other risks.",
        quantity: 1,
        pwName: "U-wifi Phone Case 4"),
     Product(
        id: '5',
        name: "U-wifi Keychain",
        cost: 4.99,
        imageurl: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/u-wifi%20keychain.png",
        service: "uwifiPlan",
        description: "Small ring or chain of metal to which several keys can be attached.",
        quantity: 1,
        pwName: "U-wifi Keychain 5"),
      Product(
        id: '6',
        name: "U-wifi Black T-shirt",
        cost: 11.99,
        imageurl: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/U-wifi%20black%20t%20shirt.png",
        service: "uwifiPlan",
        description: "Classic black cotton t-shirt, with withe U-wifi Logo.",
        quantity: 1,
        pwName: "U-wifi Black T-shirt 6")
  ];
  List<Product> additionalsDevicesSelected = [];
  List<Product> discounts = [];
  List<Product> merchantSelected = [];
  

  int get generalCartCounter {
    var counter = products.length;
    return counter;
  }

  double get total {
    var totalprod =
        products.fold(0.0, (double currentTotal, Product nextProduct) {
      return currentTotal + nextProduct.cost;
    });


    var subtotal = totalprod;

    return subtotal;
  }


  bool isSelectedGigFastTV() {
    bool isSelectedGigFastTV = false;
    for (var i = 0; i < products.length; i++) {
      if (products[i].description == "gigFastTV") {
        isSelectedGigFastTV = true;
      }
    }
    return isSelectedGigFastTV;
  }

  bool isSelectedGigFastVoice() {
    bool isSelectedGigFastVoice = false;
    for (var i = 0; i < products.length; i++) {
      if (products[i].description == "gigFastVoice") {
        isSelectedGigFastVoice = true;
      }
    }
    return isSelectedGigFastVoice;
  }



  void changeVisibilitySupportedDevices() {
    isSupportedDevicesVisible = !isSupportedDevicesVisible;
    notifyListeners();
  }


  void changeProductPrice(int index, double amount) {
    final currCost = products[index].cost;
    products[index] = products[index].copyWith(cost: currCost + amount);
    notifyListeners();
  }


//add products
  void addToCart(Product product) {
    products.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    products.remove(product);
    notifyListeners();
  }


  void productUnselected(Product product) {
    products.removeWhere((e) => e.name == product.name);

    notifyListeners();
  }

  validateAddProduct(Product product) {
    //Identifica si en la lista de productos no hay nada para agregarlo directamente
    if (products.isEmpty) {
      products.add(product);
    }

    //Consulta si en toda la lista de productos hay algún item de la misma categoría que se quiere agregar
    else {
      List<Product> contains =
          products.where((item) => item.description == product.description).toList();

      //Si no se encuentran elementos de la misma categoría, no hay problema en agregar el producto
      if (contains.isEmpty) {
        products.add(product);
      }

      //Si sí encontró un producto de la misma categoría, lo elimina y agrega el nuevo seleccionado
      else {
        products.remove(contains.first);
        products.add(product);
      }
    }
    notifyListeners();
  }




  Product createBundleDiscount(
      double bundleDiscount, double discountValue, int productsQty) {
    Product actualBundleDiscount = Product(
        id: 'bundleDiscount',
        name: "Bundling discount ${bundleDiscount * 100}%",
        cost: discountValue,
        imageurl: "",
        service: "BundleDiscount",
        description: "${productsQty}PlayDiscounts",
        quantity: 1,
        pwName: "Bundle Discount");

    return actualBundleDiscount;
  }

  void clearProductsGigFastTV() {
    badgeCounterTotal = 0;
    isSupportedDevicesVisible = true;
    notifyListeners();
  }


  void clearAllProducts() {
    badgeCounterTotal = 0;
    isSupportedDevicesVisible = true;
    notifyListeners();
  }

  convertPromoToProduct(Products promo) {
    return Product(
        id: promo.id!,
        name: promo.name!,
        cost: double.parse(promo.price!),
        imageurl: "",
        service: "promo",
        description: promo.family!,
        quantity: 1,
        pwName: promo.pwName!);
  }

}
