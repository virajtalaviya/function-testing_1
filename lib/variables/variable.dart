import 'package:flutter/material.dart';

//late final Future<Album> futureAlbum;
TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();
late DateTime dateTime = DateTime.now();
String email = '';

String password = '';
List<bool> isChecked = List<bool>.generate(5, (index) => false);

List one = ["One", "Two", "Three", "Four", "Five"];
