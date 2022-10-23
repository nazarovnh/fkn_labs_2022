import 'package:flutter/material.dart';
import 'package:marvel_herous/presentation/widgets/string_field.dart';

import '../../config/custom_scroll_behavior.dart';

class PageHero extends StatelessWidget {
  const PageHero({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Hero(
        tag: 'hero/$index',
        child: Image.network(
            "https://images.unsplash.com/photo-1635863138275-d9b33299680b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80",
            fit: BoxFit.cover,
            width: double.infinity),
      )
    );
  }
}
