import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop_template/components/cart_item.dart';
import 'package:sneakers_shop_template/models/cart.dart';
import 'package:sneakers_shop_template/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value , child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            const Text("My Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
              ),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //get each shoe

                  Shoe individualShoe = value.getUserCart()[index];
                  //return the cartItem
                  return CartItem(
                    shoe: individualShoe,

                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}