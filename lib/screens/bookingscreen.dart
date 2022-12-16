import 'package:flutter/material.dart';
import 'package:homestay_raya/model/user.dart';
import '../shared/mainmenu.dart';

class SellerScreen extends StatefulWidget {
  final User user;
  const SellerScreen({super.key, required this.user});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(title: const Text("Booking")),
          body: const Center(child: Text("Booking")),
          drawer: MainMenuWidget(user: widget.user,)),
    );
  }
  
}
