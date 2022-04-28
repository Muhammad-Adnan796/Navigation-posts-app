import 'package:flutter/material.dart';
import 'package:passing_data_app/fruit_details.dart';
import 'package:passing_data_app/fruit_model.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  static List<String> fruitname = [
    "Apple",
    "Orange",
    "Mango",
    "Banana",
    "StrawBerry",
  ];
  static List url = [
    "https://image.shutterstock.com/image-photo/red-apple-fruit-leaf-isolated-260nw-203589940.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTInRsx4uWwKKcLgm7d3RpHwZ8R-A4YyduzuQ&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg",
    "https://cdn5.vectorstock.com/i/1000x1000/90/29/banana-fruit-icon-isolated-fruits-and-vegetables-vector-20979029.jpg",
    "https://image.shutterstock.com/image-photo/strawberry-isolated-on-white-background-260nw-1305308014.jpg",
  ];

  final List FruitData = List.generate(
      fruitname.length,
          (index) => FruitDataModel(
        name: "${fruitname[index]}",
        imageUrl: "${url[index]}",
        description: "${fruitname[index]} Description...",
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 20,
          shadowColor: Colors.grey,
          title: const Text("Upload Image"),
          centerTitle: true),
      body: ListView.builder(
          itemCount: FruitData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  title: Text(FruitData[index].name),
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(FruitData[index].imageUrl),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FruitDetail(
                          fruitDataModel: FruitData[index],
                        ),
                      ),
                    );
                  }),
            );
          }),
    );
  }
}
