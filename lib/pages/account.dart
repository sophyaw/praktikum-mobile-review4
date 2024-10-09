import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: Center(
          child:
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
                },
              child: const Text('Kembali')
            )      
      ),
    );
  }
}