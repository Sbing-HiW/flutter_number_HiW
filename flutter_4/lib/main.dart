import 'package:flutter/material.dart';

class Product {
  final String title; //商品标题
  final String description; //商品描述
  Product(this.title,this.description);
}
void main() {
  runApp(MaterialApp(
    title :"导航的数据传递",
    
    ),
  );
}