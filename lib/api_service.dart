import 'dart:convert';
import 'dart:io';

import 'package:diinsel/view_models/customer.dart';
import 'package:diinsel/view_models/login_model.dart';
import 'package:diinsel/config.dart';
import 'package:dio/dio.dart';
import 'package:diinsel/view_models/category.dart';
import 'package:diinsel/view_models/product.dart';

class APIService {
  Future<bool> createCustomer(CustomerModel model) async {
    var authToken =
    base64.encode(utf8.encode(Config.key + ":" + Config.secret),);

    bool ret = false;

    try {
      var response = await Dio().post(
          Config.url + Config.customerURL,
          data: model.toJson(),
          options: new Options(headers: {
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: "application/json"
          }));

      if (response.statusCode == 201) {
        print("success");
        ret = true;
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        print(e);
        ret = false;
      } else {
        print(e);
        ret = false;
      }
    }
    return ret;
  }

  Future<LoginResponseModel> loginCustomer(String username,
      String password) async {
    LoginResponseModel model;

    try {
      var response = await Dio().post(
          Config.tokenURL,
          data: {
            "username": username,
            "password": password,
          },
          options: new Options(
              headers: {
                HttpHeaders
                    .contentTypeHeader: "application:x-www-form-urlencoded",
              }
          )
      );

      if (response.statusCode == 200) {
        model = LoginResponseModel.fromJson(response.data);
        print("Sucess");
      }
    } on DioError catch (e) {
      print(e);
      print("Error");
    }

    return model;
  }

  Future<List<Category>> getCategories() async {
    List<Category> data = new List<Category>();

    try {
      String url = Config.url +
          Config.categoriesURL +
          "?consumer_key=${Config.key}&consumer_secret=${Config.secret}";
      var response = await Dio().get(
        url,
        options: new Options(
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
        ),
      );

      if (response.statusCode == 200) {
        data = (response.data as List)
            .map(
              (i) => Category.fromJson(i),
        )
            .toList();
      }
    } on DioError catch (e) {
      print(e.response);
    }

    return data;
  }

  Future<List<Product>> getProducts(String tagId) async {
    List<Product> data = new List<Product>();

    try{
      String url = Config.url + Config.productURL +
    "?consumer_key=${Config.key}&consumer_secret=${Config.secret}&tag=$tagId";
      var response = await Dio().get(
        url,
        options: new Options(
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
        ),
      );

      if(response.statusCode == 200) {
        data = (response.data as List)
            .map(
            (i) => Product.fromJson(i),
            )
            .toList();
      }
    } on DioError catch (e){
      print(e.response);
    }
    return data;
  }
}
