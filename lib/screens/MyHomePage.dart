import 'dart:developer';

import 'package:api_app/model/dummy_data.dart';
import 'package:provider/provider.dart';
import 'package:api_app/services/controller.dart';
import 'package:flutter/material.dart';

String param = "5";

String getParam() {
  return param;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _parameterFieldcontroller =
        TextEditingController();
    final modelObject = Provider.of<dummyData>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("API's Practice"),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: controller(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.none ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                dynamic jsonFromAPI = snapshot.data;
                modelObject.fromJSON(jsonFromAPI);
                Map<String, dynamic> items = modelObject.toJSON();
                return Center(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _parameterFieldcontroller,
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      OutlinedButton(
                        child: const Text("Get Data"),
                        onPressed: () {
                          setState(
                            () {
                              param = _parameterFieldcontroller.text;
                            },
                          );
                        },
                      ),
                      Text("Id ${items["id"]}"),
                      Text("Title ${items["title"]}"),
                      Text("description ${items["description"]}"),
                      Text("price ${items["price"]}"),
                      Text("discountPercentage ${items["discountPercentage"]}"),
                      Text("rating ${items["rating"]}"),
                      Text("stock ${items["stock"]}"),
                      Text("brand ${items["brand"]}"),
                      Text("category ${items["category"]}"),
                      Image.network(items["thumbnail"]),
                      // Text("thumbnail ${items["thumbnail"]}"),
                    ],
                  ),
                );
              } else {
                return const Center(
                  child: Text("No Data Available"),
                );
              }
            }),
      ),
    );
  }
}
