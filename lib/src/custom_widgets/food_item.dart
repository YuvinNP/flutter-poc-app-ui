import 'package:flutter/material.dart';
import '../../src/utils/constants.dart';

class FoodItem extends StatelessWidget {

  final String imagePath;

  final String foodName;

  final double price;

  FoodItem({
    this.imagePath,
    this.foodName,
    this.price
  }) : assert(foodName != null);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Hero(
                tag: imagePath,
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  height: 75.0,
                  width: 75.0,
                ),
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    foodName,
                    style: StyleConstants.PRIMARY_STYLE,
                  ),
                  Text(
                    '\$$price',
                    style: StyleConstants.PRIMARY_STYLE.copyWith(
                        color: Colors.grey, letterSpacing: 1.0),

                  )
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
