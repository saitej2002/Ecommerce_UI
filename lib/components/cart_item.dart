import 'package:ecommerce_ui/models/laptops.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
   CartItem({super.key,required this.laptops});
   Laptops laptops;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeLaptopFromCart(){
    Provider.of<Cart>(context,listen: false).removeFromCart(widget.laptops);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin:const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: Image.asset(widget.laptops.imagepath),
        title: Text(widget.laptops.name),
        subtitle: Text(widget.laptops.price),
        trailing: IconButton(icon: const Icon(Icons.delete),onPressed: removeLaptopFromCart,),
      ),
    );
  }
}
