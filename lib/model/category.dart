import 'package:flutter/material.dart';

class Categorys {
  final String id;
  final String title;
  final Color color;

  const Categorys(
      {required this.id,
      required this.title,
      this.color = const Color.fromRGBO(255, 152, 0, 1)});
}
