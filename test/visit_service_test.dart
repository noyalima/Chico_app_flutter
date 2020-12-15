import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/data/repositoris/model/task.dart';
import 'package:http/http.dart' as http;

void main() {
  test("http get all visit with success", () async {
    //setup

    //act
    var response = await http
        .get('https://5faaf775dbbef70016d47f6f.mockapi.io/api/v1/tasks/10');

    print("response statusCode: ${response.statusCode} ");
    print("response: ${response.body}");

    //assert
    expect(response.statusCode, 200);
  });

  test("httpClient get all visit with success", () async {
    //setup

    //act
    var client = HttpClient();

    Future<HttpClientRequest> request = client.get(
        "5faaf775dbbef70016d47f6f.mockapi.io", null, "api/v1/tasks/1");

    var r = await request;

    var response = await r.close();

    print("response::: ${response.statusCode}");

    //assert
    expect(response.statusCode, 200);
  });

  test("dio get all visit with success", () async {
    //setup

    //act
    var dio = Dio();
    dio.options.baseUrl = "https://5faaf775dbbef70016d47f6f.mockapi.io";
    // dio.options.headers = "https://5faaf775dbbef70016d47f6f.mockapi.io";

    Response response = await dio.get("/api/v1/tasks/1");

    print("response dio::: ${response.data}");

    //assert
    expect(response.statusCode, 200);
  });
  test("visit serialize test", () async {
    //setup
    var taskResource = TaskResource(
        id: '1',
        createdAt: "do day",
        description: 'Test 1',
        title: 'title 001');

    //act
    var json = taskResource.toJson();
    print("Json: ${jsonEncode(json)}");
    //assert
    expect(json['id'], taskResource.id);
  });

  test("visit deserialize test", () async {
    //setup
    var json =
        '{"id":"1","title":"title 001","description":"Test 1","created_at":"do day"}';

    //act
    var jsonMap = jsonDecode(json);

    var taskResource = TaskResource.fromJson(jsonMap);

    print("taskResource.id: ${taskResource.id}");

    //assert
    expect(taskResource.id, jsonMap['id']);
  });
}