import 'package:flutter/material.dart';

import 'sellerscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buyer")),
      body: const Center(
        child: Text("Buyer"),
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
              },
            ),
            ListTile(
              title: const Text('Seller'),
              onTap: () {
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
