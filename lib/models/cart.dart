import 'package:flutter/material.dart';
import 'package:sneakers_shop_template/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: "Zoom Freak",
     price: "128", 
     description: "Cool shoes", 
     imagePath: "lib/img/puma.png"),

    Shoe(name: "Zoom Freak",
     price: "128", 
     description: "Cool shoes", 
     imagePath: "lib/img/sneakers2.png"),
    
  ];

  //list of itmes in user car
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cat
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}