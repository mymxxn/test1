import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tests/Widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Wishlist(),
  ));
}

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  bool iconcolor = false;
  bool iconcolors = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topbar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wishlist",
                    style: mainhead(),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 15,
                      ),
                      label: Text("Remove all"))
                ],
              ),
              card(
                  AssetImage("assets/image.jpg"),
                  InkWell(
                      onTap: () {
                        setState(() {
                          iconcolors = true;
                        });
                      },
                      child: iconcolors == true
                          ? Icon(Icons.favorite_outline, color: Colors.red)
                          : Icon(Icons.favorite, color: Colors.red))),
              SizedBox(
                height: 30,
              ),
              card(
                  AssetImage("assets/image1.jpg"),
                  InkWell(
                      onTap: () {
                        setState(() {
                          iconcolor = true;
                        });
                      },
                      child: iconcolor == true
                          ? Icon(Icons.favorite_outline, color: Colors.red)
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )))
            ],
          ),
        ),
      ),
    );
  }
}
