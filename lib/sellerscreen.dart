import 'package:flutter/material.dart';

import 'mainscreen.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Seller")),
      body: const Center(
        child: Text("Seller"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: const Text('ABC123@gmail.com'),
              accountName: Row(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 200,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.redAccent,
                      child: Icon(
                        Icons.check,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('user'),
                      const Text('@User'),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Buyer'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (content) => const MainScreen()));
              },
            ),
            ListTile(
              title: const Text('Seller'),
              onTap: () {
                 Navigator.pop(context);
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (content) => const SellerScreen()));
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                 Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
