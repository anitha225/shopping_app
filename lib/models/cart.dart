import 'package:shopping_app/models/shoe.dart';
import 'package:flutter/material.dart';


class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/zoomfreak.png',
        description: 'The forward-thinking design of his latest signature shoe '
    ),
    Shoe(
        name: 'Air Jordan',
        price: '240',
        imagePath: 'lib/images/AirJordan.png',
        description: 'The forward-thinking design of his latest signature shoe '
    ),
    Shoe(
        name: 'KD treys',
        price: '220',
        imagePath: 'lib/images/KDTREY.png',
        description: 'The forward-thinking design of his latest signature shoe '
    ),
    Shoe(
        name: 'Kyrie 6',
        price: '197',
        imagePath: 'lib/images/kyrie.png',
        description: 'The forward-thinking design of his latest signature shoe '
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add item to cart
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