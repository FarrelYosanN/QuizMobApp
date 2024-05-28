import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Card'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPersonCard(
              'assets/nama_pembuat_1.jpg',
              'Nama Pembuat 1',
              'NIM: 001',
            ),
            SizedBox(height: 20),
            _buildPersonCard(
              'assets/nama_pembuat_2.jpg',
              'Nama Pembuat 2',
              'NIM: 002',
            ),
            SizedBox(height: 20),
            _buildPersonCard(
              'assets/nama_pembuat_3.jpg',
              'Nama Pembuat 3',
              'NIM: 003',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonCard(String imagePath, String name, String id) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Image.asset(
              imagePath,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                id,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
