import 'core/inject/inject.dart';
import 'layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Inject.init();

  runApp(MaterialApp(
    home: CarroPage(),
  ));
}
