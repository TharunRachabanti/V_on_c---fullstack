import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:v_on_c_frontend/model/product_model.dart';

class Api {
  static const baseUrl = "http://192.168.112.33/api/";

  //post method
  static addproduct(Map pdata) async {
    print(pdata);
    var url = Uri.parse("${baseUrl}add_product");
    try {
      final res = await http.post(url, body: pdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
        //
      } else {
        print("Failed to get response");
        //
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //get method
  static getProduct() async {
    List<Product> products = [];

    var url = Uri.parse("${baseUrl}get_product");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        //
        var data = jsonDecode(res.body);
        data['products'].forEach(
          (value) => {
            products.add(
              Product(
                name: value['pname'],
                desc: value['pdesc'],
                price: value['pprice'],
                id: value['id'].toString(),
              ),
            )
          },
        );
        return products;
      } else {
        return [];
        //
      }
    } catch (e) {
      print(e.toString());
    }
  }

  //update put method
  static updateProduct(id, body) async {
    var url = Uri.parse(baseUrl + "update/$id");

    final res = await http.put(url, body: body);
    if (res.statusCode == 200) {
      print(jsonDecode(res.body));
    } else {
      print("failed to update data");
    }
  }

  //delete method

  static deleteProduct(id) async {
    var url = Uri.parse("${baseUrl}delete/$id");

    final res = await http.delete(url);
    if (res.statusCode == 204) {
      print("Product deleted successfully");
    } else {
      print('Failed to delete product: ${res.statusCode}');
    }
  }
}
