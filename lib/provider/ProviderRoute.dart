import 'package:flutter/material.dart';
import 'package:flutterapp1/provider/CartModel.dart';
import 'package:flutterapp1/provider/ChangeNotifierProvider.dart';
import 'package:flutterapp1/provider/Item.dart';

class ProviderRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ProviderRouteState();
  }
}

class _ProviderRouteState extends State<ProviderRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
      ),
      body: Center(
        child: ChangeNotifierProvider<CartModel>(
          data: CartModel(),
          child: Builder(
            builder: (context) {
              return Column(
                children: <Widget>[
                  Builder(builder: (context) {
                    var cart = ChangeNotifierProvider.of<CartModel>(context);
                    return Text("总价: ${cart.totalPrice}");
                  }),
                  Builder(builder: (context) {
                    print("RaisedButton build");
                    return RaisedButton(
                      child: Text("添加商品"),
                      onPressed: () {
                        ChangeNotifierProvider.of<CartModel>(context)
                            .add(Item(20.0, 1));
                      },
                    );
                  }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

}
