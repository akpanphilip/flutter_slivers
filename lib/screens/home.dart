// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff008753),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Flutter Sliver',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                background: Image.asset(
                  'assets/images/abuja.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text(
                'Item ${1 + index}',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}
