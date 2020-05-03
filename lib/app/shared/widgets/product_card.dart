import 'package:flutter/material.dart';
import '../shared_module.dart';
import 'dart:math' as math;

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: <Color>[
                  CustomTheme.secondaryColor,
                  CustomTheme.primaryColor,
                  CustomTheme.darkColor,
                  CustomTheme.darkColor,
                ],
                stops: <double>[0, 0.3, 0.7, 1],
                transform: GradientRotation(math.pi / 2),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.imgur.com/J2wBTng.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Chanel Coco noir").productCardTitle(),
          SizedBox(height: 10,),
          Text("‎€ 99.50").productCardPrice(),
        ],
      ),
    );
  }
}
