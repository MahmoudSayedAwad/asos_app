import 'package:asos_app/domain/models/products.dart';
import 'package:flutter/material.dart';


class DiscountSign extends StatelessWidget {
  const DiscountSign({
    Key? key,
    required this.model,
  }) : super(key: key);
  final Product model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(5),
        child: model.price.rrp.value == 0
            ? Text(
          "-${(((model.price.current.value)/
                  (model.price.previous.value)) *
                  100 *
                  (-1))
                  .ceil() +
                  100}%",
          style: const TextStyle(
            fontSize: 12,
            color: Colors.pink,
          ),
        )
            : Text(
          "-${(((model.price.current.value)/
                  (model.price.rrp.value)) *
                  100 *
                  (-1))
                  .ceil() +
                  100}%",
          style: const TextStyle(
            fontSize: 12,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}