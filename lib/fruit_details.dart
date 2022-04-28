import 'package:flutter/material.dart';

class FruitDetail extends StatefulWidget {
  var fruitDataModel;

  FruitDetail({required this.fruitDataModel});

  @override
  State<FruitDetail> createState() => _FruitDetailState();
}

class _FruitDetailState extends State<FruitDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 20,
          shadowColor: Colors.grey,
          title: Text(widget.fruitDataModel.name),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(widget.fruitDataModel.imageUrl, fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
                  widget.fruitDataModel.description,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
