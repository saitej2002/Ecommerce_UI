import 'package:flutter/foundation.dart';

import 'laptops.dart';

class Cart extends ChangeNotifier{
  List<Laptops> laptopsShop = [
    Laptops(name: 'Pixbay', price: '230', imagepath: "images/laptop-computer-business-vector-graphic-pixabay-14.png", descripton: "descripton"),
    Laptops(name: 'Mashtrelo', price: '256', imagepath: "images/laptop-png-images-you-can-download-mashtrelo-19.png", descripton: "descripton"),
    Laptops(name: 'Lenovo', price: '273', imagepath: "images/laptop-transparent-png-pictures-icons-and-png-39.png", descripton: "descripton"),
    Laptops(name: 'Acer', price: '250', imagepath: "images/acer-aspire-laptop-review-decent-budget-laptop-37.png", descripton: "Cool acer laptop"),

  ];

  List<Laptops> userCart = [];


  List<Laptops> getLaptopList() {
    return laptopsShop;
}
  List<Laptops> getUserCart() {
    return userCart;
  }
  void addToCart(Laptops laptops){
    userCart.add(laptops);
    notifyListeners();
  }
  void removeFromCart(Laptops laptops){
    userCart.remove(laptops);
    notifyListeners();
  }

}