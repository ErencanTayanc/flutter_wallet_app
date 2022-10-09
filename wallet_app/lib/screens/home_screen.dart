import 'package:flutter/material.dart';
import 'package:wallet_app/widgets/wealth_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wallet"),
        leading: const Icon(Icons.wallet),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: WealthContainer(),
      ),
    );
  }
}
