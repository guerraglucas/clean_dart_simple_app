import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  final CarroController controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
