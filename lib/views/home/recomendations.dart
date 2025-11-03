import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:flutter/material.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(text: "Recomendations", style: appStyle(13, FontWeight.w600, kGray)),
      ),
      body: const Center(
        child: Text('List of recomendations will be displayed here.'),
      ),
    );
  }
}