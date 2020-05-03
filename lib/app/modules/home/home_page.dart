import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/shared_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTheme.backgroundColor,
        elevation: 0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.shopping_basket,
              size: 35,
              color: CustomTheme.textColor,
            ),
          )
        ],
        leading: Container(
          padding: EdgeInsets.all(20),
          child: Icon(
            Icons.short_text,
            size: 35,
            color: CustomTheme.textColor,
          ),
        ),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 30),
                Text("Perfume").h1(),
                SizedBox(height: 30),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RotatedBox(
                        quarterTurns: 3,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: CustomTheme.darkColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      CategoryTile(child: Text("Floral").subtitle()),
                      CategoryTile(child: Text("Warm & Spicy").subtitle()),
                      CategoryTile(child: Text("Floral").subtitle()),
                      CategoryTile(child: Text("Warm & Spicy").subtitle()),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
