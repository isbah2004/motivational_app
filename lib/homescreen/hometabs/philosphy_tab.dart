

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PhilosphyTab extends StatefulWidget {
  const PhilosphyTab({super.key});

  @override
  State<PhilosphyTab> createState() => _PhilosphyTabState();
}

class _PhilosphyTabState extends State<PhilosphyTab> {
 

  final fireStore = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String id = DateTime.now().millisecondsSinceEpoch.toString();
          fireStore.doc(id).set({
            'full_name': "asdf", // John Doe
            'company': "adsf", // Stokes and Sons
            'age': 12,
            'id': id
          });
        },
        child: const Icon(Icons.add),
      ),
    );

  }
}
